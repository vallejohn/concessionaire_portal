part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onRequestAuthenticationStatus() = _OnRequestAuthenticationStatus;
}
