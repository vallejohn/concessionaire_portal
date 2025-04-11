import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
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

  @override
  Future<Account> linkNewAccount(LinkAccountParams params) {
    // TODO: implement linkNewAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  Future<bool> setDefaultAccount(String accountNo) {
    // TODO: implement setDefaultAccount
    throw UnimplementedError();
  }

  @override
  Future<bool> saveAccountAlias(Account account) {
    // TODO: implement saveAccountAlias
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteAccounts(DeleteAccountsParam param) {
    // TODO: implement deleteAccounts
    throw UnimplementedError();
  }
}
