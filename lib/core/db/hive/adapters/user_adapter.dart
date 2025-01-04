import 'package:hive/hive.dart';

import '../../../../src/authentication/data/models/user.dart';

class UserAdapter extends TypeAdapter<User>{
  @override
  User read(BinaryReader reader) {
    return User(
      id: reader.read(),
      email: reader.read(),
      name: reader.read(),
      authStatus: reader.read(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, User obj) {
    writer.write(obj.id);
    writer.write(obj.email);
    writer.write(obj.name);
    writer.write(obj.authStatus);
  }
}