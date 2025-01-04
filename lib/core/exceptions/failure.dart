import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/hive_exceptions.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.authentication(AuthenticationException authException) =
      _AuthenticationException;
  const factory Failure.hiveCollectionException(HiveCollectionException collectionException) =
  _HiveCollectionException;
}
