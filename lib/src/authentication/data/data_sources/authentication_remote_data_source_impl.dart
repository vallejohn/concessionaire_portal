import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/otp/otp_bloc.dart';

import '../../../../core/db/hive/collections/authentication_collection.dart';
import '../../core/params.dart';
import 'authentication_data_source.dart';

/// This class is responsible for retrieving data from remote
/// sources like REST APIs, Amplify, Firebase etc.
class AuthenticationRemoteDataSourceImpl extends AuthenticationDataSource {
  final _authenticationCollection = GetIt.instance<AuthenticationCollection>();

  @override
  Future<User?> requestAuthenticationStatus() async {
    final auth = await _authenticationCollection.read();
    return auth?.user;
  }

  @override
  Future<User> doLogin(LoginParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.login,
      params,
    );

    final body = response.body;
    User user = User.fromJson(body['user']);
    user = user.copyWith(
      accessToken: response.body['access_token'],
      tokenType: response.body['token_type'],
    );

    if (user.phoneVerifiedAt.isEmpty) {
      await APIEndpointService.authentication(
        AuthenticationEndpoint.registerSendOTP,
        {'phone': user.phone},
      );
    }

    await _authenticationCollection.create(UserAuth(user: user));

    return user;
  }

  @override
  Future<User> doSignUp(SignupParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.register,
      params.toJson(),
    );

    final body = response.body;

    if (body['status'] == 'error') {
      final errorsRaw = body['message'] as Map;
      final List<SignUpErrors> errors = errorsRaw.entries.map((e) {
        return SignUpErrors(field: e.key, message: e.value);
      }).toList();

      throw SignUpException(errors);
    } else {
      final userRaw = body['user'];
      User? user = userRaw == null ? null : User.fromJson(userRaw);

      return user!;
    }
  }

  @override
  Future<bool> onConfirmOTP(OTPParams params) async {
    AuthenticationEndpoint? endpoint;

    switch (params.purpose) {
      case OTPPurpose.registration:
        endpoint = AuthenticationEndpoint.confirmOTP;
      case OTPPurpose.forgotPassword:
        endpoint = AuthenticationEndpoint.forgotPasswordSendOTP;
    }

    await APIEndpointService.authentication(
      endpoint,
      params.toJson(),
    );

    if (params.loginParam != null &&
        endpoint == AuthenticationEndpoint.confirmOTP) {
      await doLogin(LoginParams(
        username: params.loginParam!.username,
        password: params.loginParam!.password,
      ));
    }
    return true;
  }

  @override
  Future<bool> onForgotPasswordSendOTP(ForgotPasswordParams params) async {
    await APIEndpointService.authentication(
      AuthenticationEndpoint.forgotPasswordSendOTP,
      {'phone': params.phone},
    );

    return true;
  }

  @override
  Future<String> onForgotPassword(ForgotPasswordParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.forgotPassword,
      {'username': params.username},
    );

    if (response.body['status'] == 'success') {
      return response.body['message'] as String;
    } else {
      throw AuthenticationException(response.body['message']);
    }
  }

  @override
  Future<bool> onCreatePassword(ForgotPasswordParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.createPassword,
      {
        'username': params.username,
        'password': params.password,
        'confirm_password': params.confirmPassword,
      },
    );

    if (response.body['status'] == 'success') {
      return true;
    } else {
      throw AuthenticationException(response.body['message']);
    }
  }
}
