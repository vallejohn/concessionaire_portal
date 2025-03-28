import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/data_sources/billing_information_data_source.dart';
import '../../data/models/billing_information.dart';

abstract class BillingInformationRepository {
  final BillingInformationDataSource dataSource;

  BillingInformationRepository({required this.dataSource});

  Future<Either<Failure, List<BillingInformation>>> getBillingHistoryList(
    BillingHistoryParams params,
  );
}
