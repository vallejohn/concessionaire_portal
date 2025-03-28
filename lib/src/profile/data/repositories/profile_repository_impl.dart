import 'package:dartz/dartz.dart';

import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';

import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

import '../../../../core/exceptions/base_exception.dart';
import '../../../../core/exceptions/hive_exceptions.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository{
  ProfileRepositoryImpl({required super.dataSource});

  @override
  Future<Either<Failure, List<Account>>> getLinkedAccounts()async {
    try{
      final data = await dataSource.getLinkedAccounts();
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }on BaseException catch(authError){
      return Left(Failure.exception(authError));
    }
  }

  @override
  Future<Either<Failure, Account>> linkNewAccount(LinkAccountParams params)async {
    try{
      final data = await dataSource.linkNewAccount(params);
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }on BaseException catch(authError){
      return Left(Failure.exception(authError));
    }
  }

  @override
  Future<Either<Failure, bool>> setDefaultAccount(String accountNo)async {
    try{
      final data = await dataSource.setDefaultAccount(accountNo);
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }on BaseException catch(authError){
      return Left(Failure.exception(authError));
    }
  }
}
