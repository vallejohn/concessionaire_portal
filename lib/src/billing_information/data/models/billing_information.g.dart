// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingInformationImpl _$$BillingInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingInformationImpl(
      billNo: json['billNo'] as String? ?? '',
      billMonth: json['billMonth'] as String? ?? '',
      amountDue: (json['amountDue'] as num?)?.toDouble() ?? 0,
      paymentDate: json['paymentDate'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$BillingInformationImplToJson(
        _$BillingInformationImpl instance) =>
    <String, dynamic>{
      'billNo': instance.billNo,
      'billMonth': instance.billMonth,
      'amountDue': instance.amountDue,
      'paymentDate': instance.paymentDate,
      'status': instance.status,
    };
