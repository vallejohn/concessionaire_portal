import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';

import '../../data/models/user.dart';

class ConfirmOTPUsecase extends UseCaseWithParams<bool, OTPParams>{
  final AuthenticationRepository _authenticationRepository;

  ConfirmOTPUsecase(this._authenticationRepository);

  @override
  Future<Either<Failure, bool>> call(OTPParams params) {
    return _authenticationRepository.onConfirmOTP(params);
  }
}