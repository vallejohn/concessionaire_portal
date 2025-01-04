import 'package:mwd_concessionaire_portal/core/db/hive/collection_base.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/local_storage_service.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/hive_exceptions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';

class AuthenticationCollection extends CollectionBase<UserAuth, UserAuth?>{

  @override
  Future<void> init(LocalStorageService storageService)async {
    key = 'user_auth';
    box = storageService.userCollectionBox;
  }

  @override
  Future<void> clear()async {
    await box.clear();
  }

  @override
  Future<UserAuth?> create(UserAuth value)async {
    await box.put(key, value);
    return await read();
  }

  @override
  Future<UserAuth?> delete(UserAuth value)async {
    await box.delete(key);
    return await read();
  }

  @override
  Future<UserAuth?> deleteAll(List<UserAuth> values) {
    throw emptyCollectionException();
  }

  @override
  Future<UserAuth?> read({List<String>? keys})async {
    final auth = await box.get(key);
    return auth;
  }

  @override
  Future<UserAuth?> update(UserAuth value)async {
    await box.put(key, value);
    return await read();
  }
}