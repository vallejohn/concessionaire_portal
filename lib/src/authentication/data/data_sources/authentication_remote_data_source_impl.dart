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
    User? user;
    await APIEndpointService.authentication(
      AuthenticationEndpoint.login,
      params,
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
      onSuccess: (data) async {
        user = User.fromJson(data['user']);
        user = user!.copyWith(
          accessToken: data['access_token'],
          tokenType: data['token_type'],
        );

        if (user!.phoneVerifiedAt.isEmpty) {
          await APIEndpointService.authentication(
            AuthenticationEndpoint.registerSendOTP,
            {'phone': user!.phone},
            onError: (dynamicError) {
              throw ServerException(dynamicError);
            },
          );
        }

        await _authenticationCollection.create(
          UserAuth(user: user),
        );
      },
    );

    return user!;
  }

  @override
  Future<User> doSignUp(SignupParams params) async {
    User? user;
    await APIEndpointService.authentication(
      AuthenticationEndpoint.register,
      params,
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
      onSuccess: (data) {
        final userRaw = data['user'];
        user = userRaw == null ? null : User.fromJson(userRaw);
      },
    );

    return user!;
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
      params,
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
    );

    if (params.loginParam != null &&
        endpoint == AuthenticationEndpoint.confirmOTP) {
      await doLogin(LoginParams(
        username: params.loginParam!.username,
        password: params.loginParam!.password,
      ));
    }else if (endpoint == AuthenticationEndpoint.confirmOTP){
      ///Get user details here via API
    }
    return true;
  }

  @override
  Future<bool> onForgotPasswordSendOTP(ForgotPasswordParams params) async {
    await APIEndpointService.authentication(
      AuthenticationEndpoint.forgotPasswordSendOTP,
      {'phone': params.phone},
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
    );
    return true;
  }

  @override
  Future<String> onForgotPassword(ForgotPasswordParams params) async {
    String message = '';
    await APIEndpointService.authentication(
      AuthenticationEndpoint.forgotPassword,
      {'username': params.username},
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
      onSuccess: (data) {
        message = data['message'] as String;
      },
    );
    return message;
  }

  @override
  Future<bool> onCreatePassword(ForgotPasswordParams params) async {
    await APIEndpointService.authentication(
      AuthenticationEndpoint.createPassword,
      {
        'username': params.username,
        'password': params.password,
        'confirm_password': params.confirmPassword,
      },
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
    );
    return true;
  }

  @override
  Future<bool> logout()async {
    final result = await APIEndpointService.authentication(
      AuthenticationEndpoint.logout,
      {},
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
    );
    final responseBody = result.body;

    if(responseBody['status'] == 'success'){
      await _authenticationCollection.clear();
    }

    return true;
  }
}
