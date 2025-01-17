import 'package:dartz/dartz.dart';

import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

import '../../../../core/exceptions/hive_exceptions.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository{
  AuthenticationRepositoryImpl({required super.dataSource});

  @override
  Future<Either<Failure, User>> requestAuthenticationStatus()async {
    try{
      final data = await dataSource.requestAuthenticationStatus();
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }
  }

  @override
  Future<Either<Failure, User>> doLogin(LoginParams params)async {
    try{
      final data = await dataSource.doLogin(params);
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }
  }
}
