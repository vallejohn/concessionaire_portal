import 'package:hive/hive.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';

import '../../../../src/authentication/data/models/user.dart';

class UserAuthAdapter extends TypeAdapter<UserAuth>{
  @override
  UserAuth read(BinaryReader reader) {
    return UserAuth(
      user: reader.read(),
    );
  }

  @override
  int get typeId => 2;

  @override
  void write(BinaryWriter writer, UserAuth obj) {
    writer.write(obj.user);
  }
}