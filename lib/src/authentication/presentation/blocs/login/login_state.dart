part of 'login_bloc.dart';

enum LoginStatus {initial, loading, success, failed}
enum CheckAuthStatus {initial, loading, success, failed}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    @Default(CheckAuthStatus.initial) CheckAuthStatus checkAuthStatus,
    DynamicError? errors,
    User? user,
  }) = _LoginState;
}
