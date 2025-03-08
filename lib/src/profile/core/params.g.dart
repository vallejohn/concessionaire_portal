// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkAccountParamsImpl _$$LinkAccountParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LinkAccountParamsImpl(
      accountNo: json['account_number'] as String,
      billNo: json['bill_no'] as String,
    );

Map<String, dynamic> _$$LinkAccountParamsImplToJson(
        _$LinkAccountParamsImpl instance) =>
    <String, dynamic>{
      'account_number': instance.accountNo,
      'bill_no': instance.billNo,
    };
