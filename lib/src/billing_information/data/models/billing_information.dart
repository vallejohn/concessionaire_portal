import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_information.freezed.dart';
part 'billing_information.g.dart';

@freezed
class BillingInformation with _$BillingInformation {
  const factory BillingInformation({
    @Default('') String billNo,
    @Default('') String billMonth,
    @Default(0) double amountDue,
    @Default('') String paymentDate,
    @Default('') String status,
  }) = _BillingInformation;

  factory BillingInformation.fromJson(Map<String, dynamic> json) => _$BillingInformationFromJson(json);
}