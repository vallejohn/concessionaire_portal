import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    @JsonKey(name: 'reference_no')
    @Default('') String referenceNo,
    @JsonKey(name: 'transaction_date')
    @Default('') String transactionDate,
    @Default('') String particulars,
    @Default(0) int reading,
    @Default(0) int usage,
    @Default(0) double debit,
    @Default(0) double credit,
    @Default(0) double balance,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}