import 'package:hive/hive.dart';

import '../../../../src/authentication/data/models/user.dart';

class UserAdapter extends TypeAdapter<User>{
  @override
  User read(BinaryReader reader) {
    return User(
      id: reader.read(),
      username: reader.read(),
      email: reader.read(),
      firstName: reader.read(),
      lastName: reader.read(),
      isPasswordReset: reader.read(),
      phoneVerifiedAt: reader.read(),
      userTypeId: reader.read(),
      deletedAt: reader.read(),
      createdAt: reader.read(),
      updatedAt: reader.read(),
      accessToken: reader.read(),
      tokenType: reader.read(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, User obj) {
    writer.write(obj.id);
    writer.write(obj.username);
    writer.write(obj.email);
    writer.write(obj.firstName);
    writer.write(obj.lastName);
    writer.write(obj.isPasswordReset);
    writer.write(obj.phoneVerifiedAt);
    writer.write(obj.userTypeId);
    writer.write(obj.deletedAt);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
    writer.write(obj.accessToken);
    writer.write(obj.tokenType);
  }
}