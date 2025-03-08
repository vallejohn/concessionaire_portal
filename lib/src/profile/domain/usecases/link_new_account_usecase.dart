import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

class LinkNewAccountUsecase extends UseCaseWithParams<bool, LinkAccountParams>{
  final ProfileRepository _profileRepository;

  LinkNewAccountUsecase(this._profileRepository);

  @override
  Future<Either<Failure, bool>> call(LinkAccountParams params) {
    return _profileRepository.linkNewAccount(params);
  }
}