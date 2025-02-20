part of 'forgot_password_bloc.dart';

enum ForgotPasswordStatus {initial, loading, success, failed}
enum ForgotPasswordPageStatus {numberEntry, newPasswordEntry}
enum CreatePasswordStatus {initial, loading, success, failed}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus status,
    @Default(CreatePasswordStatus.initial) CreatePasswordStatus createStatus,
    @Default(ForgotPasswordPageStatus.numberEntry) ForgotPasswordPageStatus pageStatus,
    DynamicError? errors,
    @Default('') String phone,
    @Default('') String username,
  }) = _ForgotPasswordState;
}
