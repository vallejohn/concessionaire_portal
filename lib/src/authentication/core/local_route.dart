
import 'package:logger/logger.dart';

import '../presentation/blocs/otp/otp_bloc.dart';

class LocalRoute {
  final String path;
  LocalRoute(this.path);

  factory LocalRoute.otp(
      OTPPurpose purpose,
    String phone, {
    String? username,
    String? password,
  }) {
    Logger().i('hwwewe: $phone');
    String purposeString = '';

    switch(purpose){
      case OTPPurpose.registration:
        purposeString = 'registration';
      case OTPPurpose.forgotPassword:
        purposeString = 'forgotPassword';
    }

    String basePath = '/otp?purpose=$purposeString&phone=$phone';
    if(username != null && password != null){
      basePath = '$basePath&username=$username&password=$password';
    }

    return LocalRoute(basePath);
  }
}
