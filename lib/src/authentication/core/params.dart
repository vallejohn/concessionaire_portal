import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';
part 'params.g.dart';

class LoginParams {
  final String username;
  final String password;

  LoginParams({
    required this.username,
    required this.password,
  });
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
