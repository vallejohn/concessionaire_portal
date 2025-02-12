class LocalRoute {
  final String path;
  LocalRoute(this.path);

  factory LocalRoute.otp(
    String phone, {
    String? username,
    String? password,
  }) {
    String basePath = '/otp?phone=$phone';
    if(username != null && password != null){
      basePath = '$basePath&username=$username&password=$password';
    }

    return LocalRoute(basePath);
  }
}
