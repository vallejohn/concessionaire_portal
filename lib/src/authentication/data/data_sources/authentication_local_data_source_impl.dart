import 'package:get_it/get_it.dart';

import '../../../../core/db/hive/collections/authentication_collection.dart';
import '../../core/params.dart';
import '../models/user.dart';
import 'authentication_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class AuthenticationLocalDataSourceImpl extends AuthenticationDataSource{
  final _authenticationCollection = GetIt.instance<AuthenticationCollection>();

  @override
  Future<User?> requestAuthenticationStatus()async {
    final auth = await _authenticationCollection.read();
    return auth?.user;
  }

  @override
  Future<User> doLogin(LoginParams params) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<User> doSignUp(SignupParams params) {
    // TODO: implement soSignUp
    throw UnimplementedError();
  }

  @override
  Future<bool> onConfirmOTP(OTPParams params) {
    // TODO: implement onConfirmOTP
    throw UnimplementedError();
  }

  @override
  Future<bool> onForgotPasswordSendOTP(ForgotPasswordParams params) {
    // TODO: implement onForgotPasswordSendOTP
    throw UnimplementedError();
  }
}
