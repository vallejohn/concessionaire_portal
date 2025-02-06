import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';

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
    Logger().i('User fetched');
    Logger().i(auth?.user?.toJson());
    return auth?.user;
  }

  @override
  Future<User> doLogin(LoginParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.login,
      {'username': params.username, 'password': params.password},
    );

    final body = response.body;
    User user = User.fromJson(body['user']);
    user = user.copyWith(
        accessToken: response.body['access_token'],
        tokenType: response.body['token_type']);

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
    final userRaw = body['user'];
    User? user = userRaw == null? null : User.fromJson(userRaw);

    if(user != null){
      user = await doLogin(LoginParams(
        username: params.username,
        password: params.password,
      ));
    }

    return user!;
  }
}
