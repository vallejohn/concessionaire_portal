import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    int? id,
    @JsonKey(name: 'user_id')
    int? userId,
    @Default('') String alias,
    @JsonKey(name: 'full_name')
    @Default('') String fullName,
    @JsonKey(name: 'account_number')
    @Default('') String accountNumber,
    @Default('') String address,
    @Default('') String status,
    @Default(false) bool isDefault,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}