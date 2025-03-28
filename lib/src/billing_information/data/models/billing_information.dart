import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_information.freezed.dart';
part 'billing_information.g.dart';

@freezed
class BillingInformation with _$BillingInformation {
  const factory BillingInformation({
    @Default(0) int id,
    @JsonKey(name: 'account_number')
    @Default('') String accountNo,
    @JsonKey(name: 'bill_no')
    @Default('') String billNo,
    @Default('') String name,
    @Default('') String address,
    @JsonKey(name: 'meter_no')
    @Default('') String meterNo,
    @JsonKey(name: 'class_type')
    @Default('') String classType,
    @JsonKey(name: 'bill_month')
    @Default('') String billMonth,
    @JsonKey(name: 'reading_date')
    @Default('') String readingDate,
    @JsonKey(name: 'due_date')
    @Default('') String dueDate,
    @JsonKey(name: 'disconnection_date')
    @Default('') String disconnectionDate,
    @JsonKey(name: 'previous_reading')
    @Default(0) int previousReading,
    @JsonKey(name: 'current_reading')
    @Default(0) int currentReading,
    @Default(0) int consumption,
    @JsonKey(name: 'current_charge')
    @Default(0) double currentCharge,
    @Default(0) double arrears,
    @Default(0) double discount,
    @Default(0) double mrrf,
    @JsonKey(name: 'total_amount')
    @Default(0) double totalAmount,
    @JsonKey(name: 'meter_reader_name')
    @Default('') String meterReaderName,
    @Default('') String status,
    @JsonKey(name: 'result_status')
    @Default('') String resultStatus,
    @Default('') String result,
    @JsonKey(name: 'deleted_at')
    @Default('') String deletedAt,
    @JsonKey(name: 'created_at')
    @Default('') String createdAt,
    @JsonKey(name: 'updated_at')
    @Default('') String updatedAt,
  }) = _BillingInformation;

  factory BillingInformation.fromJson(Map<String, dynamic> json) => _$BillingInformationFromJson(json);
}