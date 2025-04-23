import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/usecases.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/payment.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/repositories/billing_information_repository.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';

import '../../data/models/billing_information.dart';

class GetPaymentHistoryUsecase extends UseCaseWithParams<List<Payment>, PaymentParams>{
  final BillingInformationRepository _billingInformationRepository;

  GetPaymentHistoryUsecase(this._billingInformationRepository);

  @override
  Future<Either<Failure, List<Payment>>> call(PaymentParams params) {
    return _billingInformationRepository.getPayments(params);
  }
}