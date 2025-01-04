import 'package:mwd_concessionaire_portal/core/exceptions/base_exception.dart';

class AuthenticationException extends BaseException{
  AuthenticationException(String message) : super(message: message);

  factory AuthenticationException.invalidLogin(){
    return AuthenticationException('Invalid Email or password');
  }

  factory AuthenticationException.sessionExpired(){
    return AuthenticationException('Session expired');
  }
}