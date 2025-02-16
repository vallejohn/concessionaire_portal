part of 'otp_bloc.dart';

enum OTPStatus {initial, loading, success, failed}
enum OTPPurpose { registration, forgotPassword }

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    @Default(OTPStatus.initial) OTPStatus status,
    @Default('') String message,
  }) = _OtpState;
}
