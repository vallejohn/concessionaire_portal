import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

class DeleteAccountsUsecase extends UseCaseWithParams<bool, DeleteAccountsParam>{
  final ProfileRepository _profileRepository;

  DeleteAccountsUsecase(this._profileRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteAccountsParam params) {
    return _profileRepository.deleteAccounts(params);
  }
}