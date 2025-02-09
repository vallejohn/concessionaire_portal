// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) {
  return _LoginParams.fromJson(json);
}

/// @nodoc
mixin _$LoginParams {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
          LoginParams value, $Res Function(LoginParams) then) =
      _$LoginParamsCopyWithImpl<$Res, LoginParams>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res, $Val extends LoginParams>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginParamsImplCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$$LoginParamsImplCopyWith(
          _$LoginParamsImpl value, $Res Function(_$LoginParamsImpl) then) =
      __$$LoginParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginParamsImplCopyWithImpl<$Res>
    extends _$LoginParamsCopyWithImpl<$Res, _$LoginParamsImpl>
    implements _$$LoginParamsImplCopyWith<$Res> {
  __$$LoginParamsImplCopyWithImpl(
      _$LoginParamsImpl _value, $Res Function(_$LoginParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginParamsImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsImpl implements _LoginParams {
  const _$LoginParamsImpl({required this.username, required this.password});

  factory _$LoginParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginParams(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      __$$LoginParamsImplCopyWithImpl<_$LoginParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsImplToJson(
      this,
    );
  }
}

abstract class _LoginParams implements LoginParams {
  const factory _LoginParams(
      {required final String username,
      required final String password}) = _$LoginParamsImpl;

  factory _LoginParams.fromJson(Map<String, dynamic> json) =
      _$LoginParamsImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupParams _$SignupParamsFromJson(Map<String, dynamic> json) {
  return _SignupParams.fromJson(json);
}

/// @nodoc
mixin _$SignupParams {
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirm_password')
  String get confirmPassword => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this SignupParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupParamsCopyWith<SignupParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupParamsCopyWith<$Res> {
  factory $SignupParamsCopyWith(
          SignupParams value, $Res Function(SignupParams) then) =
      _$SignupParamsCopyWithImpl<$Res, SignupParams>;
  @useResult
  $Res call(
      {String username,
      String phone,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String password,
      @JsonKey(name: 'confirm_password') String confirmPassword,
      String address});
}

/// @nodoc
class _$SignupParamsCopyWithImpl<$Res, $Val extends SignupParams>
    implements $SignupParamsCopyWith<$Res> {
  _$SignupParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupParamsImplCopyWith<$Res>
    implements $SignupParamsCopyWith<$Res> {
  factory _$$SignupParamsImplCopyWith(
          _$SignupParamsImpl value, $Res Function(_$SignupParamsImpl) then) =
      __$$SignupParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String phone,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String password,
      @JsonKey(name: 'confirm_password') String confirmPassword,
      String address});
}

/// @nodoc
class __$$SignupParamsImplCopyWithImpl<$Res>
    extends _$SignupParamsCopyWithImpl<$Res, _$SignupParamsImpl>
    implements _$$SignupParamsImplCopyWith<$Res> {
  __$$SignupParamsImplCopyWithImpl(
      _$SignupParamsImpl _value, $Res Function(_$SignupParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? address = null,
  }) {
    return _then(_$SignupParamsImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupParamsImpl implements _SignupParams {
  const _$SignupParamsImpl(
      {required this.username,
      required this.phone,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.password,
      @JsonKey(name: 'confirm_password') required this.confirmPassword,
      required this.address});

  factory _$SignupParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupParamsImplFromJson(json);

  @override
  final String username;
  @override
  final String phone;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String password;
  @override
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @override
  final String address;

  @override
  String toString() {
    return 'SignupParams(username: $username, phone: $phone, firstName: $firstName, lastName: $lastName, password: $password, confirmPassword: $confirmPassword, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupParamsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, phone, firstName,
      lastName, password, confirmPassword, address);

  /// Create a copy of SignupParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupParamsImplCopyWith<_$SignupParamsImpl> get copyWith =>
      __$$SignupParamsImplCopyWithImpl<_$SignupParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupParamsImplToJson(
      this,
    );
  }
}

abstract class _SignupParams implements SignupParams {
  const factory _SignupParams(
      {required final String username,
      required final String phone,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String password,
      @JsonKey(name: 'confirm_password') required final String confirmPassword,
      required final String address}) = _$SignupParamsImpl;

  factory _SignupParams.fromJson(Map<String, dynamic> json) =
      _$SignupParamsImpl.fromJson;

  @override
  String get username;
  @override
  String get phone;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get password;
  @override
  @JsonKey(name: 'confirm_password')
  String get confirmPassword;
  @override
  String get address;

  /// Create a copy of SignupParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupParamsImplCopyWith<_$SignupParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OTPParams _$OTPParamsFromJson(Map<String, dynamic> json) {
  return _OTPParams.fromJson(json);
}

/// @nodoc
mixin _$OTPParams {
  String get phone => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this OTPParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OTPParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OTPParamsCopyWith<OTPParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPParamsCopyWith<$Res> {
  factory $OTPParamsCopyWith(OTPParams value, $Res Function(OTPParams) then) =
      _$OTPParamsCopyWithImpl<$Res, OTPParams>;
  @useResult
  $Res call({String phone, String otp});
}

/// @nodoc
class _$OTPParamsCopyWithImpl<$Res, $Val extends OTPParams>
    implements $OTPParamsCopyWith<$Res> {
  _$OTPParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OTPParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPParamsImplCopyWith<$Res>
    implements $OTPParamsCopyWith<$Res> {
  factory _$$OTPParamsImplCopyWith(
          _$OTPParamsImpl value, $Res Function(_$OTPParamsImpl) then) =
      __$$OTPParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String otp});
}

/// @nodoc
class __$$OTPParamsImplCopyWithImpl<$Res>
    extends _$OTPParamsCopyWithImpl<$Res, _$OTPParamsImpl>
    implements _$$OTPParamsImplCopyWith<$Res> {
  __$$OTPParamsImplCopyWithImpl(
      _$OTPParamsImpl _value, $Res Function(_$OTPParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OTPParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(_$OTPParamsImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPParamsImpl implements _OTPParams {
  const _$OTPParamsImpl({required this.phone, required this.otp});

  factory _$OTPParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPParamsImplFromJson(json);

  @override
  final String phone;
  @override
  final String otp;

  @override
  String toString() {
    return 'OTPParams(phone: $phone, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPParamsImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  /// Create a copy of OTPParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPParamsImplCopyWith<_$OTPParamsImpl> get copyWith =>
      __$$OTPParamsImplCopyWithImpl<_$OTPParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPParamsImplToJson(
      this,
    );
  }
}

abstract class _OTPParams implements OTPParams {
  const factory _OTPParams(
      {required final String phone,
      required final String otp}) = _$OTPParamsImpl;

  factory _OTPParams.fromJson(Map<String, dynamic> json) =
      _$OTPParamsImpl.fromJson;

  @override
  String get phone;
  @override
  String get otp;

  /// Create a copy of OTPParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPParamsImplCopyWith<_$OTPParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
