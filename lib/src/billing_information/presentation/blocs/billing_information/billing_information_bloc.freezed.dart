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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestBillingHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestBillingHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestBillingHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestBillingHistory value)
        onRequestBillingHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationEventCopyWith<$Res> {
  factory $BillingInformationEventCopyWith(BillingInformationEvent value,
          $Res Function(BillingInformationEvent) then) =
      _$BillingInformationEventCopyWithImpl<$Res, BillingInformationEvent>;
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
}

/// @nodoc
abstract class _$$OnRequestBillingHistoryImplCopyWith<$Res> {
  factory _$$OnRequestBillingHistoryImplCopyWith(
          _$OnRequestBillingHistoryImpl value,
          $Res Function(_$OnRequestBillingHistoryImpl) then) =
      __$$OnRequestBillingHistoryImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$OnRequestBillingHistoryImpl implements _OnRequestBillingHistory {
  const _$OnRequestBillingHistoryImpl();

  @override
  String toString() {
    return 'BillingInformationEvent.onRequestBillingHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRequestBillingHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestBillingHistory,
  }) {
    return onRequestBillingHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestBillingHistory,
  }) {
    return onRequestBillingHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestBillingHistory,
    required TResult orElse(),
  }) {
    if (onRequestBillingHistory != null) {
      return onRequestBillingHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestBillingHistory value)
        onRequestBillingHistory,
  }) {
    return onRequestBillingHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
  }) {
    return onRequestBillingHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestBillingHistory value)? onRequestBillingHistory,
    required TResult orElse(),
  }) {
    if (onRequestBillingHistory != null) {
      return onRequestBillingHistory(this);
    }
    return orElse();
  }
}

abstract class _OnRequestBillingHistory implements BillingInformationEvent {
  const factory _OnRequestBillingHistory() = _$OnRequestBillingHistoryImpl;
}

/// @nodoc
mixin _$BillingInformationState {
  BillingInformationStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<BillingInformation> get billHistory =>
      throw _privateConstructorUsedError;

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
      String message,
      List<BillingInformation> billHistory});
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
    Object? message = null,
    Object? billHistory = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillingInformationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      billHistory: null == billHistory
          ? _value.billHistory
          : billHistory // ignore: cast_nullable_to_non_nullable
              as List<BillingInformation>,
    ) as $Val);
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
      String message,
      List<BillingInformation> billHistory});
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
    Object? message = null,
    Object? billHistory = null,
  }) {
    return _then(_$BillingInformationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillingInformationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      billHistory: null == billHistory
          ? _value._billHistory
          : billHistory // ignore: cast_nullable_to_non_nullable
              as List<BillingInformation>,
    ));
  }
}

/// @nodoc

class _$BillingInformationStateImpl implements _BillingInformationState {
  const _$BillingInformationStateImpl(
      {this.status = BillingInformationStatus.initial,
      this.message = '',
      final List<BillingInformation> billHistory = const []})
      : _billHistory = billHistory;

  @override
  @JsonKey()
  final BillingInformationStatus status;
  @override
  @JsonKey()
  final String message;
  final List<BillingInformation> _billHistory;
  @override
  @JsonKey()
  List<BillingInformation> get billHistory {
    if (_billHistory is EqualUnmodifiableListView) return _billHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billHistory);
  }

  @override
  String toString() {
    return 'BillingInformationState(status: $status, message: $message, billHistory: $billHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInformationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._billHistory, _billHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_billHistory));

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
          final String message,
          final List<BillingInformation> billHistory}) =
      _$BillingInformationStateImpl;

  @override
  BillingInformationStatus get status;
  @override
  String get message;
  @override
  List<BillingInformation> get billHistory;

  /// Create a copy of BillingInformationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingInformationStateImplCopyWith<_$BillingInformationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
