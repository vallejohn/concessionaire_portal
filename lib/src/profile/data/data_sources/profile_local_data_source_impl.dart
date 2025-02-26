import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

import 'profile_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class ProfileLocalDataSourceImpl extends ProfileDataSource{
  @override
  Future<List<Account>> getLinkedAccounts() {
    // TODO: implement getLinkedAccounts
    throw UnimplementedError();
  }
}
