import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

abstract class ProfileDataSource {
  Future<List<Account>> getLinkedAccounts();
}
