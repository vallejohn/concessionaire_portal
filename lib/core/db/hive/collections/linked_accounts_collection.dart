import 'package:mwd_concessionaire_portal/core/db/hive/collection_base.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/local_storage_service.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/hive_exceptions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user_auth.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/profile.dart';

class LinkedAccountsCollection extends CollectionBase<Profile, Profile?>{

  @override
  Future<void> init(LocalStorageService storageService)async {
    key = 'linked_accounts';
    box = storageService.accountCollectionBox;
  }

  @override
  Future<void> clear()async {
    await box.clear();
  }

  @override
  Future<Profile?> create(Profile value)async {
    await box.put(key, value);
    return await read();
  }

  @override
  Future<Profile?> delete(Profile value)async {
    await box.delete(key);
    return await read();
  }

  @override
  Future<Profile?> deleteAll(List<Profile> values) {
    throw emptyCollectionException();
  }

  @override
  Future<Profile?> read({List<String>? keys})async {
      final account = await box.get(key);
    return account;
  }

  @override
  Future<Profile?> update(Profile value)async {
    await box.put(key, value);
    return await read();
  }
}