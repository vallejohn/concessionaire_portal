import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/repositories/billing_information_repository.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

import '../../data/models/billing_information.dart';

class GetBillingHistoryUsecase extends UseCaseWithParams<List<BillingInformation>, BillingHistoryParams>{
  final BillingInformationRepository _billingInformationRepository;

  GetBillingHistoryUsecase(this._billingInformationRepository);

  @override
  Future<Either<Failure, List<BillingInformation>>> call(BillingHistoryParams params) {
    return _billingInformationRepository.getBillingHistoryList(params);
  }
}