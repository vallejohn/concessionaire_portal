part of 'login_bloc.dart';

enum LoginStatus {initial, loading, success, failed}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    @Default('') String message,
    @Default(User()) User user,
  }) = _LoginState;
}
