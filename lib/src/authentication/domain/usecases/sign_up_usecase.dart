import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class SignUpUsecase extends UseCaseWithParams<User, SignupParams>{
  final AuthenticationRepository _authenticationRepository;

  SignUpUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, User>> call(SignupParams params) {
    return _authenticationRepository.doSignUp(params);
  }
}