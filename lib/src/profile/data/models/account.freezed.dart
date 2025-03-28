// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String alias,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'account_number') String accountNumber,
      String address,
      String status,
      bool isDefault});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? alias = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? address = null,
    Object? status = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String alias,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'account_number') String accountNumber,
      String address,
      String status,
      bool isDefault});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? alias = null,
    Object? fullName = null,
    Object? accountNumber = null,
    Object? address = null,
    Object? status = null,
    Object? isDefault = null,
  }) {
    return _then(_$AccountImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.alias = '',
      @JsonKey(name: 'full_name') this.fullName = '',
      @JsonKey(name: 'account_number') this.accountNumber = '',
      this.address = '',
      this.status = '',
      this.isDefault = false});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey()
  final String alias;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final bool isDefault;

  @override
  String toString() {
    return 'Account(id: $id, userId: $userId, alias: $alias, fullName: $fullName, accountNumber: $accountNumber, address: $address, status: $status, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, alias, fullName,
      accountNumber, address, status, isDefault);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      final String alias,
      @JsonKey(name: 'full_name') final String fullName,
      @JsonKey(name: 'account_number') final String accountNumber,
      final String address,
      final String status,
      final bool isDefault}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String get alias;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @override
  String get address;
  @override
  String get status;
  @override
  bool get isDefault;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
