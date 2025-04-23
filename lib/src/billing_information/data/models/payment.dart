import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    @Default(0) int id,
    @JsonKey(name: 'account_no')
    @Default('') String accountNumber,
    @JsonKey(name: 'reference_no')
    @Default('') String referenceNumber,
    @JsonKey(name: 'transaction_date')
    @Default('') String transactionDate,
    @Default(0) int reading,
    @Default(0) int usage,
    @Default(0) double debit,
    @Default(0) double credit,
    @Default(0) double balance,
    @JsonKey(name: 'created_at')
    @Default('') String createdAt,
    @JsonKey(name: 'updated_at')
    @Default('') String updatedAt,
    @JsonKey(name: 'reference_name')
    @Default('') String referenceName,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}