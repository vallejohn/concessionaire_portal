// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupParamsImpl _$$SignupParamsImplFromJson(Map<String, dynamic> json) =>
    _$SignupParamsImpl(
      username: json['username'] as String,
      phone: json['phone'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$SignupParamsImplToJson(_$SignupParamsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'address': instance.address,
    };
