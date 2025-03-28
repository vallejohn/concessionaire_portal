// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      alias: json['alias'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      accountNumber: json['account_number'] as String? ?? '',
      address: json['address'] as String? ?? '',
      status: json['status'] as String? ?? '',
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'alias': instance.alias,
      'full_name': instance.fullName,
      'account_number': instance.accountNumber,
      'address': instance.address,
      'status': instance.status,
      'isDefault': instance.isDefault,
    };
