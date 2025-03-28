import 'package:hive_flutter/hive_flutter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/account_adapter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/profile_adapter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/user_adapter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/user_auth_adapter.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/profile.dart';
import 'package:path_provider/path_provider.dart';

import '../../../src/authentication/data/models/user_auth.dart';


class LocalStorageService{

  late final CollectionBox<UserAuth> _userCollectionBox;
  late final CollectionBox<Profile> _profileCollectionBox;
  CollectionBox<UserAuth> get userCollectionBox => _userCollectionBox;
  CollectionBox<Profile> get accountCollectionBox => _profileCollectionBox;


  final String _userBoxName = 'user';
  final String _profileBoxName = 'profile';

  Future<void> init()async {
    await Hive.initFlutter();
    _registerAdapters();

    final directory = await getApplicationDocumentsDirectory();
    final collection = await BoxCollection.open('/mwd_portal_box', {
      _userBoxName,
      _profileBoxName,
    }, path: directory.path);

    _userCollectionBox = await collection.openBox<UserAuth>(_userBoxName);
    _profileCollectionBox = await collection.openBox<Profile>(_profileBoxName);
  }

  _registerAdapters(){
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(UserAuthAdapter());
    Hive.registerAdapter(AccountAdapter());
    Hive.registerAdapter(ProfileAdapter());
  }
}