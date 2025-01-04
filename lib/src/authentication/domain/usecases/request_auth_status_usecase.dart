import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class RequestAuthStatusUsecase extends UseCaseWithNoParams<User>{
  final AuthenticationRepository _authenticationRepository;

  RequestAuthStatusUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, User>> call() {
    return _authenticationRepository.requestAuthenticationStatus();
  }
}