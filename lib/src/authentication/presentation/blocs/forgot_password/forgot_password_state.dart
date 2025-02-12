part of 'forgot_password_bloc.dart';

enum ForgotPasswordStatus {initial, loading, success, failed}
enum ForgotPasswordPageStatus {numberEntry, newPasswordEntry}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus status,
    @Default(ForgotPasswordPageStatus.numberEntry) ForgotPasswordPageStatus pageStatus,
    @Default('') String message,
  }) = _ForgotPasswordState;
}
