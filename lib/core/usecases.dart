import 'package:dartz/dartz.dart';

import 'exceptions/failure.dart';

abstract class UseCaseWithNoParams<T>{
  Future<Either<Failure, T>> call();
}

abstract class UseCaseWithParams<T, P>{
  Future<Either<Failure, T>> call(P params);
}