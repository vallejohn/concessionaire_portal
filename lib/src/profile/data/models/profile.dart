import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    @Default([]) List<dynamic> accounts,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}