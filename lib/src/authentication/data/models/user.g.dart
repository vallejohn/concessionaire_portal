// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      isPasswordReset: (json['is_password_reset'] as num?)?.toInt() ?? 0,
      phoneVerifiedAt: json['phone_verified_at'] as String? ?? '',
      userTypeId: (json['user_type_id'] as num?)?.toInt() ?? 0,
      deletedAt: json['deleted_at'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      accessToken: json['access_token'] as String? ?? '',
      tokenType: json['token_type'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_password_reset': instance.isPasswordReset,
      'phone_verified_at': instance.phoneVerifiedAt,
      'user_type_id': instance.userTypeId,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };
