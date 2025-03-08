import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

abstract class ProfileDataSource {
  Future<List<Account>> getLinkedAccounts();
  Future<bool> linkNewAccount(LinkAccountParams params);
}
