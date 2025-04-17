part of 'logout_bloc.dart';

enum LogoutStatus{initial, loading, success, failed}

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState({
    @Default(LogoutStatus.initial) LogoutStatus status,
    DynamicError? errors,
}) = _LogoutState;
}
