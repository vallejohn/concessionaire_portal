import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class LoginUsecase extends UseCaseWithParams<User, LoginParams>{
  final AuthenticationRepository _authenticationRepository;

  LoginUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) {
    return _authenticationRepository.doLogin(params);
  }
}