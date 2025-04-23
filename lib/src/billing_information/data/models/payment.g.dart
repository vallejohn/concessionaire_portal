// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      accountNumber: json['account_no'] as String? ?? '',
      referenceNumber: json['reference_no'] as String? ?? '',
      transactionDate: json['transaction_date'] as String? ?? '',
      reading: (json['reading'] as num?)?.toInt() ?? 0,
      usage: (json['usage'] as num?)?.toInt() ?? 0,
      debit: (json['debit'] as num?)?.toDouble() ?? 0,
      credit: (json['credit'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      referenceName: json['reference_name'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_no': instance.accountNumber,
      'reference_no': instance.referenceNumber,
      'transaction_date': instance.transactionDate,
      'reading': instance.reading,
      'usage': instance.usage,
      'debit': instance.debit,
      'credit': instance.credit,
      'balance': instance.balance,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'reference_name': instance.referenceName,
    };
