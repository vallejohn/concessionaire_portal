// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingInformation _$BillingInformationFromJson(Map<String, dynamic> json) {
  return _BillingInformation.fromJson(json);
}

/// @nodoc
mixin _$BillingInformation {
  String get billNo => throw _privateConstructorUsedError;
  String get billMonth => throw _privateConstructorUsedError;
  double get amountDue => throw _privateConstructorUsedError;
  String get paymentDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this BillingInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingInformationCopyWith<BillingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationCopyWith<$Res> {
  factory $BillingInformationCopyWith(
          BillingInformation value, $Res Function(BillingInformation) then) =
      _$BillingInformationCopyWithImpl<$Res, BillingInformation>;
  @useResult
  $Res call(
      {String billNo,
      String billMonth,
      double amountDue,
      String paymentDate,
      String status});
}

/// @nodoc
class _$BillingInformationCopyWithImpl<$Res, $Val extends BillingInformation>
    implements $BillingInformationCopyWith<$Res> {
  _$BillingInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billNo = null,
    Object? billMonth = null,
    Object? amountDue = null,
    Object? paymentDate = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
      billMonth: null == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as String,
      amountDue: null == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingInformationImplCopyWith<$Res>
    implements $BillingInformationCopyWith<$Res> {
  factory _$$BillingInformationImplCopyWith(_$BillingInformationImpl value,
          $Res Function(_$BillingInformationImpl) then) =
      __$$BillingInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String billNo,
      String billMonth,
      double amountDue,
      String paymentDate,
      String status});
}

/// @nodoc
class __$$BillingInformationImplCopyWithImpl<$Res>
    extends _$BillingInformationCopyWithImpl<$Res, _$BillingInformationImpl>
    implements _$$BillingInformationImplCopyWith<$Res> {
  __$$BillingInformationImplCopyWithImpl(_$BillingInformationImpl _value,
      $Res Function(_$BillingInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billNo = null,
    Object? billMonth = null,
    Object? amountDue = null,
    Object? paymentDate = null,
    Object? status = null,
  }) {
    return _then(_$BillingInformationImpl(
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
      billMonth: null == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as String,
      amountDue: null == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingInformationImpl implements _BillingInformation {
  const _$BillingInformationImpl(
      {this.billNo = '',
      this.billMonth = '',
      this.amountDue = 0,
      this.paymentDate = '',
      this.status = ''});

  factory _$BillingInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingInformationImplFromJson(json);

  @override
  @JsonKey()
  final String billNo;
  @override
  @JsonKey()
  final String billMonth;
  @override
  @JsonKey()
  final double amountDue;
  @override
  @JsonKey()
  final String paymentDate;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'BillingInformation(billNo: $billNo, billMonth: $billMonth, amountDue: $amountDue, paymentDate: $paymentDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInformationImpl &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.billMonth, billMonth) ||
                other.billMonth == billMonth) &&
            (identical(other.amountDue, amountDue) ||
                other.amountDue == amountDue) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, billNo, billMonth, amountDue, paymentDate, status);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      __$$BillingInformationImplCopyWithImpl<_$BillingInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingInformationImplToJson(
      this,
    );
  }
}

abstract class _BillingInformation implements BillingInformation {
  const factory _BillingInformation(
      {final String billNo,
      final String billMonth,
      final double amountDue,
      final String paymentDate,
      final String status}) = _$BillingInformationImpl;

  factory _BillingInformation.fromJson(Map<String, dynamic> json) =
      _$BillingInformationImpl.fromJson;

  @override
  String get billNo;
  @override
  String get billMonth;
  @override
  double get amountDue;
  @override
  String get paymentDate;
  @override
  String get status;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
