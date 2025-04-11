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

LinkAccountParams _$LinkAccountParamsFromJson(Map<String, dynamic> json) {
  return _LinkAccountParams.fromJson(json);
}

/// @nodoc
mixin _$LinkAccountParams {
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_no')
  String get billNo => throw _privateConstructorUsedError;

  /// Serializes this LinkAccountParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkAccountParamsCopyWith<LinkAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkAccountParamsCopyWith<$Res> {
  factory $LinkAccountParamsCopyWith(
          LinkAccountParams value, $Res Function(LinkAccountParams) then) =
      _$LinkAccountParamsCopyWithImpl<$Res, LinkAccountParams>;
  @useResult
  $Res call(
      {String alias,
      @JsonKey(name: 'account_number') String accountNo,
      @JsonKey(name: 'bill_no') String billNo});
}

/// @nodoc
class _$LinkAccountParamsCopyWithImpl<$Res, $Val extends LinkAccountParams>
    implements $LinkAccountParamsCopyWith<$Res> {
  _$LinkAccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? accountNo = null,
    Object? billNo = null,
  }) {
    return _then(_value.copyWith(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkAccountParamsImplCopyWith<$Res>
    implements $LinkAccountParamsCopyWith<$Res> {
  factory _$$LinkAccountParamsImplCopyWith(_$LinkAccountParamsImpl value,
          $Res Function(_$LinkAccountParamsImpl) then) =
      __$$LinkAccountParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String alias,
      @JsonKey(name: 'account_number') String accountNo,
      @JsonKey(name: 'bill_no') String billNo});
}

/// @nodoc
class __$$LinkAccountParamsImplCopyWithImpl<$Res>
    extends _$LinkAccountParamsCopyWithImpl<$Res, _$LinkAccountParamsImpl>
    implements _$$LinkAccountParamsImplCopyWith<$Res> {
  __$$LinkAccountParamsImplCopyWithImpl(_$LinkAccountParamsImpl _value,
      $Res Function(_$LinkAccountParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? accountNo = null,
    Object? billNo = null,
  }) {
    return _then(_$LinkAccountParamsImpl(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkAccountParamsImpl implements _LinkAccountParams {
  const _$LinkAccountParamsImpl(
      {required this.alias,
      @JsonKey(name: 'account_number') required this.accountNo,
      @JsonKey(name: 'bill_no') required this.billNo});

  factory _$LinkAccountParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkAccountParamsImplFromJson(json);

  @override
  final String alias;
  @override
  @JsonKey(name: 'account_number')
  final String accountNo;
  @override
  @JsonKey(name: 'bill_no')
  final String billNo;

  @override
  String toString() {
    return 'LinkAccountParams(alias: $alias, accountNo: $accountNo, billNo: $billNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkAccountParamsImpl &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.billNo, billNo) || other.billNo == billNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alias, accountNo, billNo);

  /// Create a copy of LinkAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkAccountParamsImplCopyWith<_$LinkAccountParamsImpl> get copyWith =>
      __$$LinkAccountParamsImplCopyWithImpl<_$LinkAccountParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkAccountParamsImplToJson(
      this,
    );
  }
}

abstract class _LinkAccountParams implements LinkAccountParams {
  const factory _LinkAccountParams(
          {required final String alias,
          @JsonKey(name: 'account_number') required final String accountNo,
          @JsonKey(name: 'bill_no') required final String billNo}) =
      _$LinkAccountParamsImpl;

  factory _LinkAccountParams.fromJson(Map<String, dynamic> json) =
      _$LinkAccountParamsImpl.fromJson;

  @override
  String get alias;
  @override
  @JsonKey(name: 'account_number')
  String get accountNo;
  @override
  @JsonKey(name: 'bill_no')
  String get billNo;

  /// Create a copy of LinkAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkAccountParamsImplCopyWith<_$LinkAccountParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteAccountsParam _$DeleteAccountsParamFromJson(Map<String, dynamic> json) {
  return _DeleteAccountsParam.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountsParam {
  @JsonKey(name: 'account_numbers')
  List<String> get accountNos => throw _privateConstructorUsedError;

  /// Serializes this DeleteAccountsParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountsParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountsParamCopyWith<DeleteAccountsParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountsParamCopyWith<$Res> {
  factory $DeleteAccountsParamCopyWith(
          DeleteAccountsParam value, $Res Function(DeleteAccountsParam) then) =
      _$DeleteAccountsParamCopyWithImpl<$Res, DeleteAccountsParam>;
  @useResult
  $Res call({@JsonKey(name: 'account_numbers') List<String> accountNos});
}

/// @nodoc
class _$DeleteAccountsParamCopyWithImpl<$Res, $Val extends DeleteAccountsParam>
    implements $DeleteAccountsParamCopyWith<$Res> {
  _$DeleteAccountsParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountsParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNos = null,
  }) {
    return _then(_value.copyWith(
      accountNos: null == accountNos
          ? _value.accountNos
          : accountNos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountsParamImplCopyWith<$Res>
    implements $DeleteAccountsParamCopyWith<$Res> {
  factory _$$DeleteAccountsParamImplCopyWith(_$DeleteAccountsParamImpl value,
          $Res Function(_$DeleteAccountsParamImpl) then) =
      __$$DeleteAccountsParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'account_numbers') List<String> accountNos});
}

/// @nodoc
class __$$DeleteAccountsParamImplCopyWithImpl<$Res>
    extends _$DeleteAccountsParamCopyWithImpl<$Res, _$DeleteAccountsParamImpl>
    implements _$$DeleteAccountsParamImplCopyWith<$Res> {
  __$$DeleteAccountsParamImplCopyWithImpl(_$DeleteAccountsParamImpl _value,
      $Res Function(_$DeleteAccountsParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountsParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNos = null,
  }) {
    return _then(_$DeleteAccountsParamImpl(
      accountNos: null == accountNos
          ? _value._accountNos
          : accountNos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAccountsParamImpl implements _DeleteAccountsParam {
  const _$DeleteAccountsParamImpl(
      {@JsonKey(name: 'account_numbers')
      required final List<String> accountNos})
      : _accountNos = accountNos;

  factory _$DeleteAccountsParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAccountsParamImplFromJson(json);

  final List<String> _accountNos;
  @override
  @JsonKey(name: 'account_numbers')
  List<String> get accountNos {
    if (_accountNos is EqualUnmodifiableListView) return _accountNos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountNos);
  }

  @override
  String toString() {
    return 'DeleteAccountsParam(accountNos: $accountNos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountsParamImpl &&
            const DeepCollectionEquality()
                .equals(other._accountNos, _accountNos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_accountNos));

  /// Create a copy of DeleteAccountsParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountsParamImplCopyWith<_$DeleteAccountsParamImpl> get copyWith =>
      __$$DeleteAccountsParamImplCopyWithImpl<_$DeleteAccountsParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAccountsParamImplToJson(
      this,
    );
  }
}

abstract class _DeleteAccountsParam implements DeleteAccountsParam {
  const factory _DeleteAccountsParam(
      {@JsonKey(name: 'account_numbers')
      required final List<String> accountNos}) = _$DeleteAccountsParamImpl;

  factory _DeleteAccountsParam.fromJson(Map<String, dynamic> json) =
      _$DeleteAccountsParamImpl.fromJson;

  @override
  @JsonKey(name: 'account_numbers')
  List<String> get accountNos;

  /// Create a copy of DeleteAccountsParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountsParamImplCopyWith<_$DeleteAccountsParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
