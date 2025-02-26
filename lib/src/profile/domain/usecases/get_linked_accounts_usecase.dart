import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

class GetLinkedAccountsUsecase extends UseCaseWithNoParams<List<Account>>{
  final ProfileRepository _profileRepository;

  GetLinkedAccountsUsecase(this._profileRepository);

  @override
  Future<Either<Failure, List<Account>>> call() {
    return _profileRepository.getLinkedAccounts();
  }
}