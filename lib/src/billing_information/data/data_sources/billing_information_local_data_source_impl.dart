import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

import 'billing_information_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class BillingInformationLocalDataSourceImpl extends BillingInformationDataSource{

  @override
  Future<List<BillingInformation>> getBillingHistoryList() {
    // TODO: implement getBillingHistoryList
    throw UnimplementedError();
  }
}
