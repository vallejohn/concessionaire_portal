import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/data_sources/authentication_data_source.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  final AuthenticationDataSource dataSource;

  AuthenticationRepository({required this.dataSource});

  Future<Either<Failure, User>> requestAuthenticationStatus();
}
