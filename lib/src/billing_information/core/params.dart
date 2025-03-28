import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';
part 'params.g.dart';

@freezed
class BillingHistoryParams with _$BillingHistoryParams {
  const factory BillingHistoryParams({
    @JsonKey(name: 'account_number')
    required String accountNo,
  }) = _BillingHistoryParams;

  factory BillingHistoryParams.fromJson(Map<String, dynamic> json) => _$BillingHistoryParamsFromJson(json);
}
