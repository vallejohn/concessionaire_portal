class LoginParams {
  final String username;
  final String password;

  LoginParams({
    required this.username,
    required this.password,
  });
}

class SignUpParams {
  final String phone;
  final String firstName;
  final String lastName;
  final String password;
  final String confirmPassword;
  final String address;

  SignUpParams({
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.confirmPassword,
    required this.address,
  });
}
