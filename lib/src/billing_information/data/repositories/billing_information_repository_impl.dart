import 'package:dartz/dartz.dart';

import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';

import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';

import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/payment.dart';

import '../../../../core/exceptions/base_exception.dart';
import '../../../../core/exceptions/hive_exceptions.dart';
import '../../domain/repositories/billing_information_repository.dart';

class BillingInformationRepositoryImpl extends BillingInformationRepository {
  BillingInformationRepositoryImpl({required super.dataSource});

  @override
  Future<Either<Failure, List<BillingInformation>>> getBillingHistoryList(
    BillingHistoryParams params,
  )async {
    try{
      final data = await dataSource.getBillingHistoryList(params);
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }on BaseException catch(authError){
      return Left(Failure.exception(authError));
    }
  }

  @override
  Future<Either<Failure, List<Payment>>> getPayments(PaymentParams params)async {
    try{
      final data = await dataSource.getPayments(params);
      return Right(data);
    }on HiveCollectionException catch(e){
      return Left(Failure.hiveCollectionException(e));
    }on BaseException catch(authError){
      return Left(Failure.exception(authError));
    }
  }
}
