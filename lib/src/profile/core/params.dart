import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/account.dart';

part 'params.freezed.dart';
part 'params.g.dart';

@freezed
class LinkAccountParams with _$LinkAccountParams {
  const factory LinkAccountParams({
    required String alias,
    @JsonKey(name: 'account_number')
    required String accountNo,
    @JsonKey(name: 'bill_no')
    required String billNo,
  }) = _LinkAccountParams;

  factory LinkAccountParams.fromJson(Map<String, dynamic> json) => _$LinkAccountParamsFromJson(json);
}

@freezed
class DeleteAccountsParam with _$DeleteAccountsParam {
  const factory DeleteAccountsParam({
    @JsonKey(name: 'account_numbers')
    required List<String> accountNos,
  }) = _DeleteAccountsParam;

  factory DeleteAccountsParam.fromJson(Map<String, dynamic> json) => _$DeleteAccountsParamFromJson(json);
}
