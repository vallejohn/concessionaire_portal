// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseException<dynamic> baseException) exception,
    required TResult Function(HiveCollectionException collectionException)
        hiveCollectionException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseException<dynamic> baseException)? exception,
    TResult? Function(HiveCollectionException collectionException)?
        hiveCollectionException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseException<dynamic> baseException)? exception,
    TResult Function(HiveCollectionException collectionException)?
        hiveCollectionException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseException value) exception,
    required TResult Function(_HiveCollectionException value)
        hiveCollectionException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseException value)? exception,
    TResult? Function(_HiveCollectionException value)? hiveCollectionException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseException value)? exception,
    TResult Function(_HiveCollectionException value)? hiveCollectionException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BaseExceptionImplCopyWith<$Res> {
  factory _$$BaseExceptionImplCopyWith(
          _$BaseExceptionImpl value, $Res Function(_$BaseExceptionImpl) then) =
      __$$BaseExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseException<dynamic> baseException});
}

/// @nodoc
class __$$BaseExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BaseExceptionImpl>
    implements _$$BaseExceptionImplCopyWith<$Res> {
  __$$BaseExceptionImplCopyWithImpl(
      _$BaseExceptionImpl _value, $Res Function(_$BaseExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseException = null,
  }) {
    return _then(_$BaseExceptionImpl(
      null == baseException
          ? _value.baseException
          : baseException // ignore: cast_nullable_to_non_nullable
              as BaseException<dynamic>,
    ));
  }
}

/// @nodoc

class _$BaseExceptionImpl implements _BaseException {
  const _$BaseExceptionImpl(this.baseException);

  @override
  final BaseException<dynamic> baseException;

  @override
  String toString() {
    return 'Failure.exception(baseException: $baseException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseExceptionImpl &&
            (identical(other.baseException, baseException) ||
                other.baseException == baseException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseException);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseExceptionImplCopyWith<_$BaseExceptionImpl> get copyWith =>
      __$$BaseExceptionImplCopyWithImpl<_$BaseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseException<dynamic> baseException) exception,
    required TResult Function(HiveCollectionException collectionException)
        hiveCollectionException,
  }) {
    return exception(baseException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseException<dynamic> baseException)? exception,
    TResult? Function(HiveCollectionException collectionException)?
        hiveCollectionException,
  }) {
    return exception?.call(baseException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseException<dynamic> baseException)? exception,
    TResult Function(HiveCollectionException collectionException)?
        hiveCollectionException,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(baseException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseException value) exception,
    required TResult Function(_HiveCollectionException value)
        hiveCollectionException,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseException value)? exception,
    TResult? Function(_HiveCollectionException value)? hiveCollectionException,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseException value)? exception,
    TResult Function(_HiveCollectionException value)? hiveCollectionException,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _BaseException implements Failure {
  const factory _BaseException(final BaseException<dynamic> baseException) =
      _$BaseExceptionImpl;

  BaseException<dynamic> get baseException;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseExceptionImplCopyWith<_$BaseExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HiveCollectionExceptionImplCopyWith<$Res> {
  factory _$$HiveCollectionExceptionImplCopyWith(
          _$HiveCollectionExceptionImpl value,
          $Res Function(_$HiveCollectionExceptionImpl) then) =
      __$$HiveCollectionExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HiveCollectionException collectionException});
}

/// @nodoc
class __$$HiveCollectionExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$HiveCollectionExceptionImpl>
    implements _$$HiveCollectionExceptionImplCopyWith<$Res> {
  __$$HiveCollectionExceptionImplCopyWithImpl(
      _$HiveCollectionExceptionImpl _value,
      $Res Function(_$HiveCollectionExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionException = null,
  }) {
    return _then(_$HiveCollectionExceptionImpl(
      null == collectionException
          ? _value.collectionException
          : collectionException // ignore: cast_nullable_to_non_nullable
              as HiveCollectionException,
    ));
  }
}

/// @nodoc

class _$HiveCollectionExceptionImpl implements _HiveCollectionException {
  const _$HiveCollectionExceptionImpl(this.collectionException);

  @override
  final HiveCollectionException collectionException;

  @override
  String toString() {
    return 'Failure.hiveCollectionException(collectionException: $collectionException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HiveCollectionExceptionImpl &&
            (identical(other.collectionException, collectionException) ||
                other.collectionException == collectionException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectionException);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HiveCollectionExceptionImplCopyWith<_$HiveCollectionExceptionImpl>
      get copyWith => __$$HiveCollectionExceptionImplCopyWithImpl<
          _$HiveCollectionExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseException<dynamic> baseException) exception,
    required TResult Function(HiveCollectionException collectionException)
        hiveCollectionException,
  }) {
    return hiveCollectionException(collectionException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseException<dynamic> baseException)? exception,
    TResult? Function(HiveCollectionException collectionException)?
        hiveCollectionException,
  }) {
    return hiveCollectionException?.call(collectionException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseException<dynamic> baseException)? exception,
    TResult Function(HiveCollectionException collectionException)?
        hiveCollectionException,
    required TResult orElse(),
  }) {
    if (hiveCollectionException != null) {
      return hiveCollectionException(collectionException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseException value) exception,
    required TResult Function(_HiveCollectionException value)
        hiveCollectionException,
  }) {
    return hiveCollectionException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseException value)? exception,
    TResult? Function(_HiveCollectionException value)? hiveCollectionException,
  }) {
    return hiveCollectionException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseException value)? exception,
    TResult Function(_HiveCollectionException value)? hiveCollectionException,
    required TResult orElse(),
  }) {
    if (hiveCollectionException != null) {
      return hiveCollectionException(this);
    }
    return orElse();
  }
}

abstract class _HiveCollectionException implements Failure {
  const factory _HiveCollectionException(
          final HiveCollectionException collectionException) =
      _$HiveCollectionExceptionImpl;

  HiveCollectionException get collectionException;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HiveCollectionExceptionImplCopyWith<_$HiveCollectionExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
