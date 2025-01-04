import 'package:hive_flutter/hive_flutter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/user_adapter.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/adapters/user_auth_adapter.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:path_provider/path_provider.dart';

import '../../../src/authentication/data/models/user_auth.dart';


class LocalStorageService{

  late final CollectionBox<UserAuth> _userCollectionBox;
  CollectionBox<UserAuth> get userCollectionBox => _userCollectionBox;


  final String _userBoxName = 'user';

  Future<void> init()async {
    await Hive.initFlutter();
    _registerAdapters();

    final directory = await getApplicationDocumentsDirectory();
    final collection = await BoxCollection.open('/mwd_portal_box', {
      _userBoxName,
    }, path: directory.path);

    _userCollectionBox = await collection.openBox<UserAuth>(_userBoxName);
  }

  _registerAdapters(){
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(UserAuthAdapter());
  }
}