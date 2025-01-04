import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';

abstract class AuthenticationDataSource {
  Future<User> requestAuthenticationStatus();
}
