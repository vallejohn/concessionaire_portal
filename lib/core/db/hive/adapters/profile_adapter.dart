import 'package:hive/hive.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/profile.dart';

import '../../../../src/authentication/data/models/user.dart';

class ProfileAdapter extends TypeAdapter<Profile>{
  @override
  Profile read(BinaryReader reader) {
    return Profile(
      accounts: reader.read(),
    );
  }

  @override
  int get typeId => 3;

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer.write(obj.accounts);
  }
}