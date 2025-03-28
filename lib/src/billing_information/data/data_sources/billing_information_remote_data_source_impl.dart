import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

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
}
