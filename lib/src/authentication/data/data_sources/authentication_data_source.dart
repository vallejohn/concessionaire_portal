import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

abstract class AuthenticationDataSource {
  Future<User?> requestAuthenticationStatus();
  Future<User> doLogin(LoginParams params);
  Future<bool> logout();
  Future<User> doSignUp(SignupParams params);
  Future<bool> onConfirmOTP(OTPParams params);
  Future<bool> onForgotPasswordSendOTP(ForgotPasswordParams params);
  Future<String> onForgotPassword(ForgotPasswordParams params);
  Future<bool> onCreatePassword(ForgotPasswordParams params);
}
