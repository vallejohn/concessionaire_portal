import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

class SaveAccountAliasUsecase extends UseCaseWithParams<bool, Account>{
  final ProfileRepository _profileRepository;

  SaveAccountAliasUsecase(this._profileRepository);

  @override
  Future<Either<Failure, bool>> call(Account params) {
    return _profileRepository.saveAccountAlias(params);
  }
}