// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillingInformationEvent {
  String get accountNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accountNumber) onRequestBillingHistory,
    required TResult Function(String accountNumber) onRequestPaymentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accountNumber)? onRequestBillingHistory,
    TResult? Function(String accountNumber)? onRequestPaymentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accountNumber)? onRequestBillingHistory,
    TResult Function(String accountNumber)? onRequestPaymentHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestBillingHistory value)
        onRequestBillingHistory,
    required TResult Function(_OnRequestPaymentHistory value)
        onRequestPaymentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult? Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingInformationEventCopyWith<BillingInformationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationEventCopyWith<$Res> {
  factory $BillingInformationEventCopyWith(BillingInformationEvent value,
          $Res Function(BillingInformationEvent) then) =
      _$BillingInformationEventCopyWithImpl<$Res, BillingInformationEvent>;
  @useResult
  $Res call({String accountNumber});
}

/// @nodoc
class _$BillingInformationEventCopyWithImpl<$Res,
        $Val extends BillingInformationEvent>
    implements $BillingInformationEventCopyWith<$Res> {
  _$BillingInformationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
  }) {
    return _then(_value.copyWith(
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnRequestBillingHistoryImplCopyWith<$Res>
    implements $BillingInformationEventCopyWith<$Res> {
  factory _$$OnRequestBillingHistoryImplCopyWith(
          _$OnRequestBillingHistoryImpl value,
          $Res Function(_$OnRequestBillingHistoryImpl) then) =
      __$$OnRequestBillingHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountNumber});
}

/// @nodoc
class __$$OnRequestBillingHistoryImplCopyWithImpl<$Res>
    extends _$BillingInformationEventCopyWithImpl<$Res,
        _$OnRequestBillingHistoryImpl>
    implements _$$OnRequestBillingHistoryImplCopyWith<$Res> {
  __$$OnRequestBillingHistoryImplCopyWithImpl(
      _$OnRequestBillingHistoryImpl _value,
      $Res Function(_$OnRequestBillingHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
  }) {
    return _then(_$OnRequestBillingHistoryImpl(
      null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRequestBillingHistoryImpl implements _OnRequestBillingHistory {
  const _$OnRequestBillingHistoryImpl(this.accountNumber);

  @override
  final String accountNumber;

  @override
  String toString() {
    return 'BillingInformationEvent.onRequestBillingHistory(accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRequestBillingHistoryImpl &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountNumber);

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRequestBillingHistoryImplCopyWith<_$OnRequestBillingHistoryImpl>
      get copyWith => __$$OnRequestBillingHistoryImplCopyWithImpl<
          _$OnRequestBillingHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accountNumber) onRequestBillingHistory,
    required TResult Function(String accountNumber) onRequestPaymentHistory,
  }) {
    return onRequestBillingHistory(accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accountNumber)? onRequestBillingHistory,
    TResult? Function(String accountNumber)? onRequestPaymentHistory,
  }) {
    return onRequestBillingHistory?.call(accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accountNumber)? onRequestBillingHistory,
    TResult Function(String accountNumber)? onRequestPaymentHistory,
    required TResult orElse(),
  }) {
    if (onRequestBillingHistory != null) {
      return onRequestBillingHistory(accountNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestBillingHistory value)
        onRequestBillingHistory,
    required TResult Function(_OnRequestPaymentHistory value)
        onRequestPaymentHistory,
  }) {
    return onRequestBillingHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult? Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
  }) {
    return onRequestBillingHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
    required TResult orElse(),
  }) {
    if (onRequestBillingHistory != null) {
      return onRequestBillingHistory(this);
    }
    return orElse();
  }
}

abstract class _OnRequestBillingHistory implements BillingInformationEvent {
  const factory _OnRequestBillingHistory(final String accountNumber) =
      _$OnRequestBillingHistoryImpl;

  @override
  String get accountNumber;

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnRequestBillingHistoryImplCopyWith<_$OnRequestBillingHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRequestPaymentHistoryImplCopyWith<$Res>
    implements $BillingInformationEventCopyWith<$Res> {
  factory _$$OnRequestPaymentHistoryImplCopyWith(
          _$OnRequestPaymentHistoryImpl value,
          $Res Function(_$OnRequestPaymentHistoryImpl) then) =
      __$$OnRequestPaymentHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountNumber});
}

/// @nodoc
class __$$OnRequestPaymentHistoryImplCopyWithImpl<$Res>
    extends _$BillingInformationEventCopyWithImpl<$Res,
        _$OnRequestPaymentHistoryImpl>
    implements _$$OnRequestPaymentHistoryImplCopyWith<$Res> {
  __$$OnRequestPaymentHistoryImplCopyWithImpl(
      _$OnRequestPaymentHistoryImpl _value,
      $Res Function(_$OnRequestPaymentHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
  }) {
    return _then(_$OnRequestPaymentHistoryImpl(
      null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRequestPaymentHistoryImpl implements _OnRequestPaymentHistory {
  const _$OnRequestPaymentHistoryImpl(this.accountNumber);

  @override
  final String accountNumber;

  @override
  String toString() {
    return 'BillingInformationEvent.onRequestPaymentHistory(accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRequestPaymentHistoryImpl &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountNumber);

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRequestPaymentHistoryImplCopyWith<_$OnRequestPaymentHistoryImpl>
      get copyWith => __$$OnRequestPaymentHistoryImplCopyWithImpl<
          _$OnRequestPaymentHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accountNumber) onRequestBillingHistory,
    required TResult Function(String accountNumber) onRequestPaymentHistory,
  }) {
    return onRequestPaymentHistory(accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accountNumber)? onRequestBillingHistory,
    TResult? Function(String accountNumber)? onRequestPaymentHistory,
  }) {
    return onRequestPaymentHistory?.call(accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accountNumber)? onRequestBillingHistory,
    TResult Function(String accountNumber)? onRequestPaymentHistory,
    required TResult orElse(),
  }) {
    if (onRequestPaymentHistory != null) {
      return onRequestPaymentHistory(accountNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestBillingHistory value)
        onRequestBillingHistory,
    required TResult Function(_OnRequestPaymentHistory value)
        onRequestPaymentHistory,
  }) {
    return onRequestPaymentHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult? Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
  }) {
    return onRequestPaymentHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    TResult Function(_OnRequestPaymentHistory value)? onRequestPaymentHistory,
    required TResult orElse(),
  }) {
    if (onRequestPaymentHistory != null) {
      return onRequestPaymentHistory(this);
    }
    return orElse();
  }
}

abstract class _OnRequestPaymentHistory implements BillingInformationEvent {
  const factory _OnRequestPaymentHistory(final String accountNumber) =
      _$OnRequestPaymentHistoryImpl;

  @override
  String get accountNumber;

  /// Create a copy of BillingInformationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnRequestPaymentHistoryImplCopyWith<_$OnRequestPaymentHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillingInformationState {
  BillingInformationStatus get status => throw _privateConstructorUsedError;
  DynamicError? get error => throw _privateConstructorUsedError;
  List<BillingInformation> get billHistory =>
      throw _privateConstructorUsedError;
  BillingInformation? get latestBill => throw _privateConstructorUsedError;
  PaymentState get paymentState => throw _privateConstructorUsedError;

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingInformationStateCopyWith<BillingInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationStateCopyWith<$Res> {
  factory $BillingInformationStateCopyWith(BillingInformationState value,
          $Res Function(BillingInformationState) then) =
      _$BillingInformationStateCopyWithImpl<$Res, BillingInformationState>;
  @useResult
  $Res call(
      {BillingInformationStatus status,
      DynamicError? error,
      List<BillingInformation> billHistory,
      BillingInformation? latestBill,
      PaymentState paymentState});

  $BillingInformationCopyWith<$Res>? get latestBill;
  $PaymentStateCopyWith<$Res> get paymentState;
}

/// @nodoc
class _$BillingInformationStateCopyWithImpl<$Res,
        $Val extends BillingInformationState>
    implements $BillingInformationStateCopyWith<$Res> {
  _$BillingInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? billHistory = null,
    Object? latestBill = freezed,
    Object? paymentState = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillingInformationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      billHistory: null == billHistory
          ? _value.billHistory
          : billHistory // ignore: cast_nullable_to_non_nullable
              as List<BillingInformation>,
      latestBill: freezed == latestBill
          ? _value.latestBill
          : latestBill // ignore: cast_nullable_to_non_nullable
              as BillingInformation?,
      paymentState: null == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as PaymentState,
    ) as $Val);
  }

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingInformationCopyWith<$Res>? get latestBill {
    if (_value.latestBill == null) {
      return null;
    }

    return $BillingInformationCopyWith<$Res>(_value.latestBill!, (value) {
      return _then(_value.copyWith(latestBill: value) as $Val);
    });
  }

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentStateCopyWith<$Res> get paymentState {
    return $PaymentStateCopyWith<$Res>(_value.paymentState, (value) {
      return _then(_value.copyWith(paymentState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillingInformationStateImplCopyWith<$Res>
    implements $BillingInformationStateCopyWith<$Res> {
  factory _$$BillingInformationStateImplCopyWith(
          _$BillingInformationStateImpl value,
          $Res Function(_$BillingInformationStateImpl) then) =
      __$$BillingInformationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BillingInformationStatus status,
      DynamicError? error,
      List<BillingInformation> billHistory,
      BillingInformation? latestBill,
      PaymentState paymentState});

  @override
  $BillingInformationCopyWith<$Res>? get latestBill;
  @override
  $PaymentStateCopyWith<$Res> get paymentState;
}

/// @nodoc
class __$$BillingInformationStateImplCopyWithImpl<$Res>
    extends _$BillingInformationStateCopyWithImpl<$Res,
        _$BillingInformationStateImpl>
    implements _$$BillingInformationStateImplCopyWith<$Res> {
  __$$BillingInformationStateImplCopyWithImpl(
      _$BillingInformationStateImpl _value,
      $Res Function(_$BillingInformationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? billHistory = null,
    Object? latestBill = freezed,
    Object? paymentState = null,
  }) {
    return _then(_$BillingInformationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillingInformationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      billHistory: null == billHistory
          ? _value._billHistory
          : billHistory // ignore: cast_nullable_to_non_nullable
              as List<BillingInformation>,
      latestBill: freezed == latestBill
          ? _value.latestBill
          : latestBill // ignore: cast_nullable_to_non_nullable
              as BillingInformation?,
      paymentState: null == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as PaymentState,
    ));
  }
}

/// @nodoc

class _$BillingInformationStateImpl implements _BillingInformationState {
  const _$BillingInformationStateImpl(
      {this.status = BillingInformationStatus.initial,
      this.error,
      final List<BillingInformation> billHistory = const [],
      this.latestBill,
      this.paymentState = const PaymentState()})
      : _billHistory = billHistory;

  @override
  @JsonKey()
  final BillingInformationStatus status;
  @override
  final DynamicError? error;
  final List<BillingInformation> _billHistory;
  @override
  @JsonKey()
  List<BillingInformation> get billHistory {
    if (_billHistory is EqualUnmodifiableListView) return _billHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billHistory);
  }

  @override
  final BillingInformation? latestBill;
  @override
  @JsonKey()
  final PaymentState paymentState;

  @override
  String toString() {
    return 'BillingInformationState(status: $status, error: $error, billHistory: $billHistory, latestBill: $latestBill, paymentState: $paymentState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInformationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._billHistory, _billHistory) &&
            (identical(other.latestBill, latestBill) ||
                other.latestBill == latestBill) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      const DeepCollectionEquality().hash(_billHistory),
      latestBill,
      paymentState);

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInformationStateImplCopyWith<_$BillingInformationStateImpl>
      get copyWith => __$$BillingInformationStateImplCopyWithImpl<
          _$BillingInformationStateImpl>(this, _$identity);
}

abstract class _BillingInformationState implements BillingInformationState {
  const factory _BillingInformationState(
      {final BillingInformationStatus status,
      final DynamicError? error,
      final List<BillingInformation> billHistory,
      final BillingInformation? latestBill,
      final PaymentState paymentState}) = _$BillingInformationStateImpl;

  @override
  BillingInformationStatus get status;
  @override
  DynamicError? get error;
  @override
  List<BillingInformation> get billHistory;
  @override
  BillingInformation? get latestBill;
  @override
  PaymentState get paymentState;

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingInformationStateImplCopyWith<_$BillingInformationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  PaymentStatus get status => throw _privateConstructorUsedError;
  DynamicError? get error => throw _privateConstructorUsedError;
  List<Payment> get payments => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {PaymentStatus status, DynamicError? error, List<Payment> payments});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? payments = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentStatus status, DynamicError? error, List<Payment> payments});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? payments = null,
  }) {
    return _then(_$PaymentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {this.status = PaymentStatus.initial,
      this.error,
      final List<Payment> payments = const []})
      : _payments = payments;

  @override
  @JsonKey()
  final PaymentStatus status;
  @override
  final DynamicError? error;
  final List<Payment> _payments;
  @override
  @JsonKey()
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'PaymentState(status: $status, error: $error, payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_payments));

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final PaymentStatus status,
      final DynamicError? error,
      final List<Payment> payments}) = _$PaymentStateImpl;

  @override
  PaymentStatus get status;
  @override
  DynamicError? get error;
  @override
  List<Payment> get payments;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
