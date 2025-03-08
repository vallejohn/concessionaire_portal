// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestData,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnRequestDataImplCopyWith<$Res> {
  factory _$$OnRequestDataImplCopyWith(
          _$OnRequestDataImpl value, $Res Function(_$OnRequestDataImpl) then) =
      __$$OnRequestDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRequestDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$OnRequestDataImpl>
    implements _$$OnRequestDataImplCopyWith<$Res> {
  __$$OnRequestDataImplCopyWithImpl(
      _$OnRequestDataImpl _value, $Res Function(_$OnRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRequestDataImpl implements _OnRequestData {
  const _$OnRequestDataImpl();

  @override
  String toString() {
    return 'ProfileEvent.onRequestData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRequestDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestData,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
  }) {
    return onRequestData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
  }) {
    return onRequestData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    required TResult orElse(),
  }) {
    if (onRequestData != null) {
      return onRequestData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
  }) {
    return onRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
  }) {
    return onRequestData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    required TResult orElse(),
  }) {
    if (onRequestData != null) {
      return onRequestData(this);
    }
    return orElse();
  }
}

abstract class _OnRequestData implements ProfileEvent {
  const factory _OnRequestData() = _$OnRequestDataImpl;
}

/// @nodoc
abstract class _$$OnLinkNewAccountImplCopyWith<$Res> {
  factory _$$OnLinkNewAccountImplCopyWith(_$OnLinkNewAccountImpl value,
          $Res Function(_$OnLinkNewAccountImpl) then) =
      __$$OnLinkNewAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkAccountParams params, String nickname});

  $LinkAccountParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$OnLinkNewAccountImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$OnLinkNewAccountImpl>
    implements _$$OnLinkNewAccountImplCopyWith<$Res> {
  __$$OnLinkNewAccountImplCopyWithImpl(_$OnLinkNewAccountImpl _value,
      $Res Function(_$OnLinkNewAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
    Object? nickname = null,
  }) {
    return _then(_$OnLinkNewAccountImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LinkAccountParams,
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkAccountParamsCopyWith<$Res> get params {
    return $LinkAccountParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$OnLinkNewAccountImpl implements _OnLinkNewAccount {
  const _$OnLinkNewAccountImpl(this.params, this.nickname);

  @override
  final LinkAccountParams params;
  @override
  final String nickname;

  @override
  String toString() {
    return 'ProfileEvent.onLinkNewAccount(params: $params, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLinkNewAccountImpl &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params, nickname);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLinkNewAccountImplCopyWith<_$OnLinkNewAccountImpl> get copyWith =>
      __$$OnLinkNewAccountImplCopyWithImpl<_$OnLinkNewAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestData,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
  }) {
    return onLinkNewAccount(params, nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
  }) {
    return onLinkNewAccount?.call(params, nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    required TResult orElse(),
  }) {
    if (onLinkNewAccount != null) {
      return onLinkNewAccount(params, nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
  }) {
    return onLinkNewAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
  }) {
    return onLinkNewAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    required TResult orElse(),
  }) {
    if (onLinkNewAccount != null) {
      return onLinkNewAccount(this);
    }
    return orElse();
  }
}

abstract class _OnLinkNewAccount implements ProfileEvent {
  const factory _OnLinkNewAccount(
          final LinkAccountParams params, final String nickname) =
      _$OnLinkNewAccountImpl;

  LinkAccountParams get params;
  String get nickname;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnLinkNewAccountImplCopyWith<_$OnLinkNewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  AccountState get accountState => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({AccountState accountState});

  $AccountStateCopyWith<$Res> get accountState;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountState = null,
  }) {
    return _then(_value.copyWith(
      accountState: null == accountState
          ? _value.accountState
          : accountState // ignore: cast_nullable_to_non_nullable
              as AccountState,
    ) as $Val);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStateCopyWith<$Res> get accountState {
    return $AccountStateCopyWith<$Res>(_value.accountState, (value) {
      return _then(_value.copyWith(accountState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountState accountState});

  @override
  $AccountStateCopyWith<$Res> get accountState;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountState = null,
  }) {
    return _then(_$ProfileStateImpl(
      accountState: null == accountState
          ? _value.accountState
          : accountState // ignore: cast_nullable_to_non_nullable
              as AccountState,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl({this.accountState = const AccountState()});

  @override
  @JsonKey()
  final AccountState accountState;

  @override
  String toString() {
    return 'ProfileState(accountState: $accountState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.accountState, accountState) ||
                other.accountState == accountState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountState);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState({final AccountState accountState}) =
      _$ProfileStateImpl;

  @override
  AccountState get accountState;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  AccountStatus get status => throw _privateConstructorUsedError;
  DynamicError? get error => throw _privateConstructorUsedError;
  List<Account> get linkedAccounts => throw _privateConstructorUsedError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {AccountStatus status,
      DynamicError? error,
      List<Account> linkedAccounts});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      linkedAccounts: null == linkedAccounts
          ? _value.linkedAccounts
          : linkedAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountStatus status,
      DynamicError? error,
      List<Account> linkedAccounts});
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_$AccountStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DynamicError?,
      linkedAccounts: null == linkedAccounts
          ? _value._linkedAccounts
          : linkedAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.status = AccountStatus.initial,
      this.error,
      final List<Account> linkedAccounts = const []})
      : _linkedAccounts = linkedAccounts;

  @override
  @JsonKey()
  final AccountStatus status;
  @override
  final DynamicError? error;
  final List<Account> _linkedAccounts;
  @override
  @JsonKey()
  List<Account> get linkedAccounts {
    if (_linkedAccounts is EqualUnmodifiableListView) return _linkedAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedAccounts);
  }

  @override
  String toString() {
    return 'AccountState(status: $status, error: $error, linkedAccounts: $linkedAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._linkedAccounts, _linkedAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_linkedAccounts));

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final AccountStatus status,
      final DynamicError? error,
      final List<Account> linkedAccounts}) = _$AccountStateImpl;

  @override
  AccountStatus get status;
  @override
  DynamicError? get error;
  @override
  List<Account> get linkedAccounts;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
