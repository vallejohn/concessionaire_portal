part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onRequestAuthenticationStatus() = _OnRequestAuthenticationStatus;
  const factory LoginEvent.doLogin(LoginParams param) = _DoLogin;
}
