import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

import 'profile_data_source.dart';

/// This class is responsible for retrieving data from remote 
/// sources like REST APIs, Amplify, Firebase etc.
class ProfileRemoteDataSourceImpl extends ProfileDataSource{

  final data = [
    {
      "alias": "home",
      "name": "John Doe",
      "number": "12345678901",
      "address": "123 Main St, Cityville",
      "status": "active",
      "isDefault": true
    },
    {
      "alias": "office",
      "name": "Jane Smith",
      "number": "09876543211",
      "address": "456 Elm St, Townsville",
      "status": "inactive",
      "isDefault": false
    },
    {
      "alias": "shop",
      "name": "Michael Brown",
      "number": "11223344556",
      "address": "789 Oak St, Villagetown",
      "status": "active",
      "isDefault": false
    },
    {
      "alias": "park",
      "name": "Emily White",
      "number": "22334455667",
      "address": "321 Pine St, Hamletcity",
      "status": "inactive",
      "isDefault": false
    },
    {
      "alias": "school",
      "name": "Robert Black",
      "number": "33445566778",
      "address": "654 Birch St, Countryside",
      "status": "active",
      "isDefault": false
    }
  ];

  @override
  Future<List<Account>> getLinkedAccounts()async {
    return data.map((e) => Account.fromJson(e)).toList();
  }
}
