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

class DynamicError extends Equatable{
  final List<FieldError> fields;
  final String message;
  const DynamicError({this.fields = const [], this.message = ''});

  @override
  List<Object?> get props => [fields, message];
}

class FieldError extends Equatable{
  final String field;
  final String message;
  const FieldError({this.field = '', this.message = ''});

  @override
  List<Object?> get props => [field, message];
}

class ServerException extends BaseException<DynamicError>{
  ServerException(DynamicError error) : super(value: error);
}