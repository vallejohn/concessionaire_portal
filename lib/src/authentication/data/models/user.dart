import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unknown}

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String email,
    @Default('') String name, // Optional
    @Default(AuthenticationStatus.unknown) AuthenticationStatus authStatus,
  }) = _User;

  factory User.unauthenticated() => const User(
    id: '',
    email: '',
    authStatus: AuthenticationStatus.unauthenticated,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}