import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class LogoutUsecase extends UseCaseWithNoParams<bool>{
  final AuthenticationRepository _authenticationRepository;

  LogoutUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, bool>> call() {
    return _authenticationRepository.logout();
  }
}