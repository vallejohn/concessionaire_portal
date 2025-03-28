import 'package:hive/hive.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

import '../../../../src/authentication/data/models/user.dart';

class AccountAdapter extends TypeAdapter<Account>{
  @override
  Account read(BinaryReader reader) {
    return Account(
      alias: reader.read(),
      fullName: reader.read(),
      accountNumber: reader.read(),
      address: reader.read(),
      status: reader.read(),
      isDefault: reader.read(),
    );
  }

  @override
  int get typeId => 4;

  @override
  void write(BinaryWriter writer, Account obj) {
    writer.write(obj.alias);
    writer.write(obj.fullName);
    writer.write(obj.accountNumber);
    writer.write(obj.address);
    writer.write(obj.status);
    writer.write(obj.isDefault);
  }
}