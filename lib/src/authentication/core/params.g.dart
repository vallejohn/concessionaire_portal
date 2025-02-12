// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsImpl _$$LoginParamsImplFromJson(Map<String, dynamic> json) =>
    _$LoginParamsImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginParamsImplToJson(_$LoginParamsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

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

_$OTPParamsImpl _$$OTPParamsImplFromJson(Map<String, dynamic> json) =>
    _$OTPParamsImpl(
      phone: json['phone'] as String,
      otp: json['otp'] as String,
      loginParam: json['loginParam'] == null
          ? null
          : LoginParams.fromJson(json['loginParam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OTPParamsImplToJson(_$OTPParamsImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otp': instance.otp,
      'loginParam': instance.loginParam,
    };

_$ForgotPasswordParamsImpl _$$ForgotPasswordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordParamsImpl(
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$ForgotPasswordParamsImplToJson(
        _$ForgotPasswordParamsImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'phone': instance.phone,
    };
