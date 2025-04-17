// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      referenceNo: json['reference_no'] as String? ?? '',
      transactionDate: json['transaction_date'] as String? ?? '',
      particulars: json['particulars'] as String? ?? '',
      reading: (json['reading'] as num?)?.toInt() ?? 0,
      usage: (json['usage'] as num?)?.toInt() ?? 0,
      debit: (json['debit'] as num?)?.toDouble() ?? 0,
      credit: (json['credit'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'reference_no': instance.referenceNo,
      'transaction_date': instance.transactionDate,
      'particulars': instance.particulars,
      'reading': instance.reading,
      'usage': instance.usage,
      'debit': instance.debit,
      'credit': instance.credit,
      'balance': instance.balance,
    };
