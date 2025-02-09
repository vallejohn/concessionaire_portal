// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestAuthenticationStatus,
    required TResult Function(LoginParams param) doLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestAuthenticationStatus,
    TResult? Function(LoginParams param)? doLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestAuthenticationStatus,
    TResult Function(LoginParams param)? doLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestAuthenticationStatus value)
        onRequestAuthenticationStatus,
    required TResult Function(_DoLogin value) doLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult? Function(_DoLogin value)? doLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult Function(_DoLogin value)? doLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnRequestAuthenticationStatusImplCopyWith<$Res> {
  factory _$$OnRequestAuthenticationStatusImplCopyWith(
          _$OnRequestAuthenticationStatusImpl value,
          $Res Function(_$OnRequestAuthenticationStatusImpl) then) =
      __$$OnRequestAuthenticationStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRequestAuthenticationStatusImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnRequestAuthenticationStatusImpl>
    implements _$$OnRequestAuthenticationStatusImplCopyWith<$Res> {
  __$$OnRequestAuthenticationStatusImplCopyWithImpl(
      _$OnRequestAuthenticationStatusImpl _value,
      $Res Function(_$OnRequestAuthenticationStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRequestAuthenticationStatusImpl
    implements _OnRequestAuthenticationStatus {
  const _$OnRequestAuthenticationStatusImpl();

  @override
  String toString() {
    return 'LoginEvent.onRequestAuthenticationStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRequestAuthenticationStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestAuthenticationStatus,
    required TResult Function(LoginParams param) doLogin,
  }) {
    return onRequestAuthenticationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestAuthenticationStatus,
    TResult? Function(LoginParams param)? doLogin,
  }) {
    return onRequestAuthenticationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestAuthenticationStatus,
    TResult Function(LoginParams param)? doLogin,
    required TResult orElse(),
  }) {
    if (onRequestAuthenticationStatus != null) {
      return onRequestAuthenticationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestAuthenticationStatus value)
        onRequestAuthenticationStatus,
    required TResult Function(_DoLogin value) doLogin,
  }) {
    return onRequestAuthenticationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult? Function(_DoLogin value)? doLogin,
  }) {
    return onRequestAuthenticationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult Function(_DoLogin value)? doLogin,
    required TResult orElse(),
  }) {
    if (onRequestAuthenticationStatus != null) {
      return onRequestAuthenticationStatus(this);
    }
    return orElse();
  }
}

abstract class _OnRequestAuthenticationStatus implements LoginEvent {
  const factory _OnRequestAuthenticationStatus() =
      _$OnRequestAuthenticationStatusImpl;
}

/// @nodoc
abstract class _$$DoLoginImplCopyWith<$Res> {
  factory _$$DoLoginImplCopyWith(
          _$DoLoginImpl value, $Res Function(_$DoLoginImpl) then) =
      __$$DoLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams param});

  $LoginParamsCopyWith<$Res> get param;
}

/// @nodoc
class __$$DoLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$DoLoginImpl>
    implements _$$DoLoginImplCopyWith<$Res> {
  __$$DoLoginImplCopyWithImpl(
      _$DoLoginImpl _value, $Res Function(_$DoLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$DoLoginImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<$Res> get param {
    return $LoginParamsCopyWith<$Res>(_value.param, (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc

class _$DoLoginImpl implements _DoLogin {
  const _$DoLoginImpl(this.param);

  @override
  final LoginParams param;

  @override
  String toString() {
    return 'LoginEvent.doLogin(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoLoginImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoLoginImplCopyWith<_$DoLoginImpl> get copyWith =>
      __$$DoLoginImplCopyWithImpl<_$DoLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRequestAuthenticationStatus,
    required TResult Function(LoginParams param) doLogin,
  }) {
    return doLogin(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRequestAuthenticationStatus,
    TResult? Function(LoginParams param)? doLogin,
  }) {
    return doLogin?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRequestAuthenticationStatus,
    TResult Function(LoginParams param)? doLogin,
    required TResult orElse(),
  }) {
    if (doLogin != null) {
      return doLogin(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRequestAuthenticationStatus value)
        onRequestAuthenticationStatus,
    required TResult Function(_DoLogin value) doLogin,
  }) {
    return doLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult? Function(_DoLogin value)? doLogin,
  }) {
    return doLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRequestAuthenticationStatus value)?
        onRequestAuthenticationStatus,
    TResult Function(_DoLogin value)? doLogin,
    required TResult orElse(),
  }) {
    if (doLogin != null) {
      return doLogin(this);
    }
    return orElse();
  }
}

abstract class _DoLogin implements LoginEvent {
  const factory _DoLogin(final LoginParams param) = _$DoLoginImpl;

  LoginParams get param;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoLoginImplCopyWith<_$DoLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  LoginStatus get loginStatus => throw _privateConstructorUsedError;
  CheckAuthStatus get checkAuthStatus => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus loginStatus,
      CheckAuthStatus checkAuthStatus,
      String message,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? checkAuthStatus = null,
    Object? message = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      checkAuthStatus: null == checkAuthStatus
          ? _value.checkAuthStatus
          : checkAuthStatus // ignore: cast_nullable_to_non_nullable
              as CheckAuthStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus loginStatus,
      CheckAuthStatus checkAuthStatus,
      String message,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? checkAuthStatus = null,
    Object? message = null,
    Object? user = freezed,
  }) {
    return _then(_$LoginStateImpl(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      checkAuthStatus: null == checkAuthStatus
          ? _value.checkAuthStatus
          : checkAuthStatus // ignore: cast_nullable_to_non_nullable
              as CheckAuthStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.loginStatus = LoginStatus.initial,
      this.checkAuthStatus = CheckAuthStatus.initial,
      this.message = '',
      this.user});

  @override
  @JsonKey()
  final LoginStatus loginStatus;
  @override
  @JsonKey()
  final CheckAuthStatus checkAuthStatus;
  @override
  @JsonKey()
  final String message;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginState(loginStatus: $loginStatus, checkAuthStatus: $checkAuthStatus, message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.checkAuthStatus, checkAuthStatus) ||
                other.checkAuthStatus == checkAuthStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loginStatus, checkAuthStatus, message, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final LoginStatus loginStatus,
      final CheckAuthStatus checkAuthStatus,
      final String message,
      final User? user}) = _$LoginStateImpl;

  @override
  LoginStatus get loginStatus;
  @override
  CheckAuthStatus get checkAuthStatus;
  @override
  String get message;
  @override
  User? get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
