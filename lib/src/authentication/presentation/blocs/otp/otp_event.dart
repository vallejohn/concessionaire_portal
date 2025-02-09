part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.onConfirmOTP(OTPParams param) = _OnConfirmOTP;
}
