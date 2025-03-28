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

BillingHistoryParams _$BillingHistoryParamsFromJson(Map<String, dynamic> json) {
  return _BillingHistoryParams.fromJson(json);
}

/// @nodoc
mixin _$BillingHistoryParams {
  @JsonKey(name: 'account_number')
  String get accountNo => throw _privateConstructorUsedError;

  /// Serializes this BillingHistoryParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingHistoryParamsCopyWith<BillingHistoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingHistoryParamsCopyWith<$Res> {
  factory $BillingHistoryParamsCopyWith(BillingHistoryParams value,
          $Res Function(BillingHistoryParams) then) =
      _$BillingHistoryParamsCopyWithImpl<$Res, BillingHistoryParams>;
  @useResult
  $Res call({@JsonKey(name: 'account_number') String accountNo});
}

/// @nodoc
class _$BillingHistoryParamsCopyWithImpl<$Res,
        $Val extends BillingHistoryParams>
    implements $BillingHistoryParamsCopyWith<$Res> {
  _$BillingHistoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNo = null,
  }) {
    return _then(_value.copyWith(
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingHistoryParamsImplCopyWith<$Res>
    implements $BillingHistoryParamsCopyWith<$Res> {
  factory _$$BillingHistoryParamsImplCopyWith(_$BillingHistoryParamsImpl value,
          $Res Function(_$BillingHistoryParamsImpl) then) =
      __$$BillingHistoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'account_number') String accountNo});
}

/// @nodoc
class __$$BillingHistoryParamsImplCopyWithImpl<$Res>
    extends _$BillingHistoryParamsCopyWithImpl<$Res, _$BillingHistoryParamsImpl>
    implements _$$BillingHistoryParamsImplCopyWith<$Res> {
  __$$BillingHistoryParamsImplCopyWithImpl(_$BillingHistoryParamsImpl _value,
      $Res Function(_$BillingHistoryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNo = null,
  }) {
    return _then(_$BillingHistoryParamsImpl(
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingHistoryParamsImpl implements _BillingHistoryParams {
  const _$BillingHistoryParamsImpl(
      {@JsonKey(name: 'account_number') required this.accountNo});

  factory _$BillingHistoryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingHistoryParamsImplFromJson(json);

  @override
  @JsonKey(name: 'account_number')
  final String accountNo;

  @override
  String toString() {
    return 'BillingHistoryParams(accountNo: $accountNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingHistoryParamsImpl &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountNo);

  /// Create a copy of BillingHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingHistoryParamsImplCopyWith<_$BillingHistoryParamsImpl>
      get copyWith =>
          __$$BillingHistoryParamsImplCopyWithImpl<_$BillingHistoryParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingHistoryParamsImplToJson(
      this,
    );
  }
}

abstract class _BillingHistoryParams implements BillingHistoryParams {
  const factory _BillingHistoryParams(
          {@JsonKey(name: 'account_number') required final String accountNo}) =
      _$BillingHistoryParamsImpl;

  factory _BillingHistoryParams.fromJson(Map<String, dynamic> json) =
      _$BillingHistoryParamsImpl.fromJson;

  @override
  @JsonKey(name: 'account_number')
  String get accountNo;

  /// Create a copy of BillingHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingHistoryParamsImplCopyWith<_$BillingHistoryParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
