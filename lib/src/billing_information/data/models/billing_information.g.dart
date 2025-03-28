// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingInformationImpl _$$BillingInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingInformationImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      accountNo: json['account_number'] as String? ?? '',
      billNo: json['bill_no'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      meterNo: json['meter_no'] as String? ?? '',
      classType: json['class_type'] as String? ?? '',
      billMonth: json['bill_month'] as String? ?? '',
      readingDate: json['reading_date'] as String? ?? '',
      dueDate: json['due_date'] as String? ?? '',
      disconnectionDate: json['disconnection_date'] as String? ?? '',
      previousReading: (json['previous_reading'] as num?)?.toInt() ?? 0,
      currentReading: (json['current_reading'] as num?)?.toInt() ?? 0,
      consumption: (json['consumption'] as num?)?.toInt() ?? 0,
      currentCharge: (json['current_charge'] as num?)?.toDouble() ?? 0,
      arrears: (json['arrears'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      mrrf: (json['mrrf'] as num?)?.toDouble() ?? 0,
      totalAmount: (json['total_amount'] as num?)?.toDouble() ?? 0,
      meterReaderName: json['meter_reader_name'] as String? ?? '',
      status: json['status'] as String? ?? '',
      resultStatus: json['result_status'] as String? ?? '',
      result: json['result'] as String? ?? '',
      deletedAt: json['deleted_at'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$BillingInformationImplToJson(
        _$BillingInformationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNo,
      'bill_no': instance.billNo,
      'name': instance.name,
      'address': instance.address,
      'meter_no': instance.meterNo,
      'class_type': instance.classType,
      'bill_month': instance.billMonth,
      'reading_date': instance.readingDate,
      'due_date': instance.dueDate,
      'disconnection_date': instance.disconnectionDate,
      'previous_reading': instance.previousReading,
      'current_reading': instance.currentReading,
      'consumption': instance.consumption,
      'current_charge': instance.currentCharge,
      'arrears': instance.arrears,
      'discount': instance.discount,
      'mrrf': instance.mrrf,
      'total_amount': instance.totalAmount,
      'meter_reader_name': instance.meterReaderName,
      'status': instance.status,
      'result_status': instance.resultStatus,
      'result': instance.result,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
