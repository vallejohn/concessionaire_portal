import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/payment.dart';

import '../../../../core/exceptions/authentication_exception.dart';
import 'billing_information_data_source.dart';

/// This class is responsible for retrieving data from remote 
/// sources like REST APIs, Amplify, Firebase etc.
class BillingInformationRemoteDataSourceImpl extends BillingInformationDataSource{

  @override
  Future<List<BillingInformation>> getBillingHistoryList(BillingHistoryParams params)async {
    List<BillingInformation> bills = [];

    await APIEndpointService.billing(
      BillingEndpoint.bills,
      params,
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
      onSuccess: (data){
        bills = (data['bills'] as List).map((e) => BillingInformation.fromJson(e)).toList();
      }
    );

    return bills;
  }

  @override
  Future<List<Payment>> getPayments(PaymentParams params)async {
    List<Payment> payments = [];

    await APIEndpointService.billing(
        BillingEndpoint.payments,
        params,
        onError: (dynamicError) {
          throw ServerException(dynamicError);
        },
        onSuccess: (data){
          payments = (data['payments'] as List).map((e) => Payment.fromJson(e)).toList();
        }
    );

    payments = List.generate(23, (index){
      return Payment(
        referenceNo: '232982$index',
        transactionDate: '01/05/2024',
        particulars: 'Water Bill',
        reading: 3644,
        usage: 13,
        debit: 260.70,
        balance: 970.60
      );
    }).toList();

    return payments;
  }
}
