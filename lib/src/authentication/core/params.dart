import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';
part 'params.g.dart';

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String username,
    required String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);
}

@freezed
class SignupParams with _$SignupParams {
  const factory SignupParams({
    required String username,
    required String phone,

    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String password,
    @JsonKey(name: 'confirm_password')
    required String confirmPassword,
    required String address,
  }) = _SignupParams;

  factory SignupParams.fromJson(Map<String, dynamic> json) => _$SignupParamsFromJson(json);
}

@freezed
class OTPParams with _$OTPParams {
  const factory OTPParams({
    required String phone,
    required String otp,
  }) = _OTPParams;

  factory OTPParams.fromJson(Map<String, dynamic> json) => _$OTPParamsFromJson(json);
}
