import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class CreatePasswordUsecase extends UseCaseWithParams<String, ForgotPasswordParams>{
  final AuthenticationRepository _authenticationRepository;

  CreatePasswordUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, String>> call(ForgotPasswordParams params) {
    return _authenticationRepository.onCreatePassword(params);
  }
}