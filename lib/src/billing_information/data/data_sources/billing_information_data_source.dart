import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

abstract class BillingInformationDataSource {
  Future<List<BillingInformation>> getBillingHistoryList(BillingHistoryParams params);
}
