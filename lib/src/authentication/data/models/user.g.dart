// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      authStatus: $enumDecodeNullable(
              _$AuthenticationStatusEnumMap, json['authStatus']) ??
          AuthenticationStatus.unknown,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'authStatus': _$AuthenticationStatusEnumMap[instance.authStatus]!,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
  AuthenticationStatus.unknown: 'unknown',
};
