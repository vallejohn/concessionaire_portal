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
    required TResult Function(String accountNo) onSetDefaultAccount,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
    required TResult Function(Account account) onSaveAccountAlias,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(String accountNo)? onSetDefaultAccount,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult? Function(Account account)? onSaveAccountAlias,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(String accountNo)? onSetDefaultAccount,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult Function(Account account)? onSaveAccountAlias,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnSetDefaultAccount value) onSetDefaultAccount,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
    required TResult Function(_OnSaveAccountAlias value) onSaveAccountAlias,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult? Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
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
    required TResult Function(String accountNo) onSetDefaultAccount,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
    required TResult Function(Account account) onSaveAccountAlias,
  }) {
    return onRequestData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(String accountNo)? onSetDefaultAccount,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult? Function(Account account)? onSaveAccountAlias,
  }) {
    return onRequestData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(String accountNo)? onSetDefaultAccount,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult Function(Account account)? onSaveAccountAlias,
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
    required TResult Function(_OnSetDefaultAccount value) onSetDefaultAccount,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
    required TResult Function(_OnSaveAccountAlias value) onSaveAccountAlias,
  }) {
    return onRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult? Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
  }) {
    return onRequestData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
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
abstract class _$$OnSetDefaultAccountImplCopyWith<$Res> {
  factory _$$OnSetDefaultAccountImplCopyWith(_$OnSetDefaultAccountImpl value,
          $Res Function(_$OnSetDefaultAccountImpl) then) =
      __$$OnSetDefaultAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountNo});
}

/// @nodoc
class __$$OnSetDefaultAccountImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$OnSetDefaultAccountImpl>
    implements _$$OnSetDefaultAccountImplCopyWith<$Res> {
  __$$OnSetDefaultAccountImplCopyWithImpl(_$OnSetDefaultAccountImpl _value,
      $Res Function(_$OnSetDefaultAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNo = null,
  }) {
    return _then(_$OnSetDefaultAccountImpl(
      null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSetDefaultAccountImpl implements _OnSetDefaultAccount {
  const _$OnSetDefaultAccountImpl(this.accountNo);

  @override
  final String accountNo;

  @override
  String toString() {
    return 'ProfileEvent.onSetDefaultAccount(accountNo: $accountNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSetDefaultAccountImpl &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountNo);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSetDefaultAccountImplCopyWith<_$OnSetDefaultAccountImpl> get copyWith =>
      __$$OnSetDefaultAccountImplCopyWithImpl<_$OnSetDefaultAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestData,
    required TResult Function(String accountNo) onSetDefaultAccount,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
    required TResult Function(Account account) onSaveAccountAlias,
  }) {
    return onSetDefaultAccount(accountNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(String accountNo)? onSetDefaultAccount,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult? Function(Account account)? onSaveAccountAlias,
  }) {
    return onSetDefaultAccount?.call(accountNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(String accountNo)? onSetDefaultAccount,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult Function(Account account)? onSaveAccountAlias,
    required TResult orElse(),
  }) {
    if (onSetDefaultAccount != null) {
      return onSetDefaultAccount(accountNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnSetDefaultAccount value) onSetDefaultAccount,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
    required TResult Function(_OnSaveAccountAlias value) onSaveAccountAlias,
  }) {
    return onSetDefaultAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult? Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
  }) {
    return onSetDefaultAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
    required TResult orElse(),
  }) {
    if (onSetDefaultAccount != null) {
      return onSetDefaultAccount(this);
    }
    return orElse();
  }
}

abstract class _OnSetDefaultAccount implements ProfileEvent {
  const factory _OnSetDefaultAccount(final String accountNo) =
      _$OnSetDefaultAccountImpl;

  String get accountNo;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSetDefaultAccountImplCopyWith<_$OnSetDefaultAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String accountNo) onSetDefaultAccount,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
    required TResult Function(Account account) onSaveAccountAlias,
  }) {
    return onLinkNewAccount(params, nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(String accountNo)? onSetDefaultAccount,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult? Function(Account account)? onSaveAccountAlias,
  }) {
    return onLinkNewAccount?.call(params, nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(String accountNo)? onSetDefaultAccount,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult Function(Account account)? onSaveAccountAlias,
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
    required TResult Function(_OnSetDefaultAccount value) onSetDefaultAccount,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
    required TResult Function(_OnSaveAccountAlias value) onSaveAccountAlias,
  }) {
    return onLinkNewAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult? Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
  }) {
    return onLinkNewAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
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
abstract class _$$OnSaveAccountAliasImplCopyWith<$Res> {
  factory _$$OnSaveAccountAliasImplCopyWith(_$OnSaveAccountAliasImpl value,
          $Res Function(_$OnSaveAccountAliasImpl) then) =
      __$$OnSaveAccountAliasImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$OnSaveAccountAliasImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$OnSaveAccountAliasImpl>
    implements _$$OnSaveAccountAliasImplCopyWith<$Res> {
  __$$OnSaveAccountAliasImplCopyWithImpl(_$OnSaveAccountAliasImpl _value,
      $Res Function(_$OnSaveAccountAliasImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$OnSaveAccountAliasImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$OnSaveAccountAliasImpl implements _OnSaveAccountAlias {
  const _$OnSaveAccountAliasImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'ProfileEvent.onSaveAccountAlias(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSaveAccountAliasImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSaveAccountAliasImplCopyWith<_$OnSaveAccountAliasImpl> get copyWith =>
      __$$OnSaveAccountAliasImplCopyWithImpl<_$OnSaveAccountAliasImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestData,
    required TResult Function(String accountNo) onSetDefaultAccount,
    required TResult Function(LinkAccountParams params, String nickname)
        onLinkNewAccount,
    required TResult Function(Account account) onSaveAccountAlias,
  }) {
    return onSaveAccountAlias(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestData,
    TResult? Function(String accountNo)? onSetDefaultAccount,
    TResult? Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult? Function(Account account)? onSaveAccountAlias,
  }) {
    return onSaveAccountAlias?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestData,
    TResult Function(String accountNo)? onSetDefaultAccount,
    TResult Function(LinkAccountParams params, String nickname)?
        onLinkNewAccount,
    TResult Function(Account account)? onSaveAccountAlias,
    required TResult orElse(),
  }) {
    if (onSaveAccountAlias != null) {
      return onSaveAccountAlias(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestData value) onRequestData,
    required TResult Function(_OnSetDefaultAccount value) onSetDefaultAccount,
    required TResult Function(_OnLinkNewAccount value) onLinkNewAccount,
    required TResult Function(_OnSaveAccountAlias value) onSaveAccountAlias,
  }) {
    return onSaveAccountAlias(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestData value)? onRequestData,
    TResult? Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult? Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult? Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
  }) {
    return onSaveAccountAlias?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestData value)? onRequestData,
    TResult Function(_OnSetDefaultAccount value)? onSetDefaultAccount,
    TResult Function(_OnLinkNewAccount value)? onLinkNewAccount,
    TResult Function(_OnSaveAccountAlias value)? onSaveAccountAlias,
    required TResult orElse(),
  }) {
    if (onSaveAccountAlias != null) {
      return onSaveAccountAlias(this);
    }
    return orElse();
  }
}

abstract class _OnSaveAccountAlias implements ProfileEvent {
  const factory _OnSaveAccountAlias(final Account account) =
      _$OnSaveAccountAliasImpl;

  Account get account;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSaveAccountAliasImplCopyWith<_$OnSaveAccountAliasImpl> get copyWith =>
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
  AddAccountStatus get addAccountStatus => throw _privateConstructorUsedError;
  SetDefaultAccountStatus get setDefaultAccountStatus =>
      throw _privateConstructorUsedError;
  SaveAccountAliasStatus get saveAccountAliasStatus =>
      throw _privateConstructorUsedError;
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
      AddAccountStatus addAccountStatus,
      SetDefaultAccountStatus setDefaultAccountStatus,
      SaveAccountAliasStatus saveAccountAliasStatus,
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
    Object? addAccountStatus = null,
    Object? setDefaultAccountStatus = null,
    Object? saveAccountAliasStatus = null,
    Object? error = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      addAccountStatus: null == addAccountStatus
          ? _value.addAccountStatus
          : addAccountStatus // ignore: cast_nullable_to_non_nullable
              as AddAccountStatus,
      setDefaultAccountStatus: null == setDefaultAccountStatus
          ? _value.setDefaultAccountStatus
          : setDefaultAccountStatus // ignore: cast_nullable_to_non_nullable
              as SetDefaultAccountStatus,
      saveAccountAliasStatus: null == saveAccountAliasStatus
          ? _value.saveAccountAliasStatus
          : saveAccountAliasStatus // ignore: cast_nullable_to_non_nullable
              as SaveAccountAliasStatus,
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
      AddAccountStatus addAccountStatus,
      SetDefaultAccountStatus setDefaultAccountStatus,
      SaveAccountAliasStatus saveAccountAliasStatus,
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
    Object? addAccountStatus = null,
    Object? setDefaultAccountStatus = null,
    Object? saveAccountAliasStatus = null,
    Object? error = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_$AccountStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      addAccountStatus: null == addAccountStatus
          ? _value.addAccountStatus
          : addAccountStatus // ignore: cast_nullable_to_non_nullable
              as AddAccountStatus,
      setDefaultAccountStatus: null == setDefaultAccountStatus
          ? _value.setDefaultAccountStatus
          : setDefaultAccountStatus // ignore: cast_nullable_to_non_nullable
              as SetDefaultAccountStatus,
      saveAccountAliasStatus: null == saveAccountAliasStatus
          ? _value.saveAccountAliasStatus
          : saveAccountAliasStatus // ignore: cast_nullable_to_non_nullable
              as SaveAccountAliasStatus,
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
      this.addAccountStatus = AddAccountStatus.initial,
      this.setDefaultAccountStatus = SetDefaultAccountStatus.initial,
      this.saveAccountAliasStatus = SaveAccountAliasStatus.initial,
      this.error,
      final List<Account> linkedAccounts = const []})
      : _linkedAccounts = linkedAccounts;

  @override
  @JsonKey()
  final AccountStatus status;
  @override
  @JsonKey()
  final AddAccountStatus addAccountStatus;
  @override
  @JsonKey()
  final SetDefaultAccountStatus setDefaultAccountStatus;
  @override
  @JsonKey()
  final SaveAccountAliasStatus saveAccountAliasStatus;
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
    return 'AccountState(status: $status, addAccountStatus: $addAccountStatus, setDefaultAccountStatus: $setDefaultAccountStatus, saveAccountAliasStatus: $saveAccountAliasStatus, error: $error, linkedAccounts: $linkedAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addAccountStatus, addAccountStatus) ||
                other.addAccountStatus == addAccountStatus) &&
            (identical(
                    other.setDefaultAccountStatus, setDefaultAccountStatus) ||
                other.setDefaultAccountStatus == setDefaultAccountStatus) &&
            (identical(other.saveAccountAliasStatus, saveAccountAliasStatus) ||
                other.saveAccountAliasStatus == saveAccountAliasStatus) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._linkedAccounts, _linkedAccounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      addAccountStatus,
      setDefaultAccountStatus,
      saveAccountAliasStatus,
      error,
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
      final AddAccountStatus addAccountStatus,
      final SetDefaultAccountStatus setDefaultAccountStatus,
      final SaveAccountAliasStatus saveAccountAliasStatus,
      final DynamicError? error,
      final List<Account> linkedAccounts}) = _$AccountStateImpl;

  @override
  AccountStatus get status;
  @override
  AddAccountStatus get addAccountStatus;
  @override
  SetDefaultAccountStatus get setDefaultAccountStatus;
  @override
  SaveAccountAliasStatus get saveAccountAliasStatus;
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
