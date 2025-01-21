import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

import '../../core/params.dart';
import 'authentication_data_source.dart';

/// This class is responsible for retrieving data from remote
/// sources like REST APIs, Amplify, Firebase etc.
class AuthenticationRemoteDataSourceImpl extends AuthenticationDataSource {
  @override
  Future<User> requestAuthenticationStatus() async {
    await Future.delayed(const Duration(seconds: 3));
    return const User(
      id: '01292',
      email: 'valjohn.teruel@gmail.com',
      name: 'Valle John Teruel',
      authStatus: AuthenticationStatus.unauthenticated,
    );
  }

  @override
  Future<User> doLogin(LoginParams params) async {
    final response = await APIEndpointService.authentication(
      AuthenticationEndpoint.login,
      {'username': params.username, 'password': params.password},
    );

    return const User(
      id: '01292',
      email: 'valjohn.teruel@gmail.com',
      name: 'Valle John Teruel',
      authStatus: AuthenticationStatus.unauthenticated,
    );
  }

  User _testLogin(LoginParams params) {
    if (params.password == 'abc123**') {
      return const User(
        id: '01292',
        email: 'valjohn.teruel@gmail.com',
        name: 'Valle John Teruel',
        authStatus: AuthenticationStatus.unauthenticated,
      );
    } else {
      throw AuthenticationException.invalidLogin();
    }
  }
}
