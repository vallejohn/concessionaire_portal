import 'package:equatable/equatable.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/base_exception.dart';

class AuthenticationException extends BaseException<String>{
  AuthenticationException(String message) : super(value: message);

  factory AuthenticationException.invalidLogin(){
    return AuthenticationException('Invalid Email or password');
  }

  factory AuthenticationException.sessionExpired(){
    return AuthenticationException('Session expired');
  }
}

class SignUpErrors extends Equatable{
  final String field;
  final String message;
  const SignUpErrors({this.field = '', this.message = ''});

  @override
  List<Object?> get props => [field, message];
}

class SignUpException extends BaseException<List<SignUpErrors>>{
  SignUpException(List<SignUpErrors> errors) : super(value: errors);
}