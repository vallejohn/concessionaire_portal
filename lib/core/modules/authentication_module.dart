class AuthenticationModule {
  AuthenticationModule._internal();

  static final AuthenticationModule _instance = AuthenticationModule._internal();

  factory AuthenticationModule() {
    return _instance;
  }

  void initialize(){

  }
}