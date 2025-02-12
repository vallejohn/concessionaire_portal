import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unknown}

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    int? id,
    @Default('') String username,
    @Default('') String email,
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @JsonKey(name: 'is_password_reset') @Default(0) int isPasswordReset,
    @JsonKey(name: 'phone_verified_at') @Default('') String phoneVerifiedAt,
    @JsonKey(name: 'user_type_id') @Default(0) int userTypeId,
    @JsonKey(name: 'deleted_at') @Default('') String deletedAt,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'access_token') @Default('') String accessToken,
    @JsonKey(name: 'token_type') @Default('') String tokenType,
    @Default('') String phone,
  }) = _User;

  factory User.unauthenticated() => const User(
    id: null,
    email: '',
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}