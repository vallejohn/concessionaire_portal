import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/payment.dart';

import 'billing_information_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class BillingInformationLocalDataSourceImpl extends BillingInformationDataSource{

  @override
  Future<List<BillingInformation>> getBillingHistoryList(BillingHistoryParams params) {
    // TODO: implement getBillingHistoryList
    throw UnimplementedError();
  }

  @override
  Future<List<Payment>> getPayments(PaymentParams params) {
    // TODO: implement getPayments
    throw UnimplementedError();
  }
}
