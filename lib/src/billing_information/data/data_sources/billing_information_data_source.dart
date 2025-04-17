import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/payment.dart';

abstract class BillingInformationDataSource {
  Future<List<BillingInformation>> getBillingHistoryList(BillingHistoryParams params);
  Future<List<Payment>> getPayments(PaymentParams params);
}
