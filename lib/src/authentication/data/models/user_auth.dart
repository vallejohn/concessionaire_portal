import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

part 'user_auth.freezed.dart';
part 'user_auth.g.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unknown}

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    @Default(User()) User user,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) => _$UserAuthFromJson(json);
}