import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

class SetDefaultAccountUsecase extends UseCaseWithParams<bool, String>{
  final ProfileRepository _profileRepository;

  SetDefaultAccountUsecase(this._profileRepository);

  @override
  Future<Either<Failure, bool>> call(String params) {
    return _profileRepository.setDefaultAccount(params);
  }
}