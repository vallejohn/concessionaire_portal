// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkAccountParamsImpl _$$LinkAccountParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LinkAccountParamsImpl(
      alias: json['alias'] as String,
      accountNo: json['account_number'] as String,
      billNo: json['bill_no'] as String,
    );

Map<String, dynamic> _$$LinkAccountParamsImplToJson(
        _$LinkAccountParamsImpl instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'account_number': instance.accountNo,
      'bill_no': instance.billNo,
    };

_$DeleteAccountsParamImpl _$$DeleteAccountsParamImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteAccountsParamImpl(
      accountNos: (json['account_numbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DeleteAccountsParamImplToJson(
        _$DeleteAccountsParamImpl instance) =>
    <String, dynamic>{
      'account_numbers': instance.accountNos,
    };
