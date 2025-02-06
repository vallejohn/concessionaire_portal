// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
