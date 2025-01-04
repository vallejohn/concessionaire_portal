import 'package:get_it/get_it.dart';

import '../../../../core/db/hive/collections/authentication_collection.dart';
import '../models/user.dart';
import 'authentication_data_source.dart';

/// This class is responsible for retrieving data from local 
/// sources like SQFlite, Hive etc.
class AuthenticationLocalDataSourceImpl extends AuthenticationDataSource{
  final _authenticationCollection = GetIt.instance<AuthenticationCollection>();

  @override
  Future<User> requestAuthenticationStatus()async {
    final auth = await _authenticationCollection.read();
    if(auth == null) return User.unauthenticated();
    return auth.user;
  }
}
