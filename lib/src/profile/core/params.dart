import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';
part 'params.g.dart';

@freezed
class LinkAccountParams with _$LinkAccountParams {
  const factory LinkAccountParams({
    @JsonKey(name: 'account_number')
    required String accountNo,
    @JsonKey(name: 'bill_no')
    required String billNo,
  }) = _LinkAccountParams;

  factory LinkAccountParams.fromJson(Map<String, dynamic> json) => _$LinkAccountParamsFromJson(json);
}
