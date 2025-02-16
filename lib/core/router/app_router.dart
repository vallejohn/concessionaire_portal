import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/demo_pages/home_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/otp_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/register_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/startup_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/success_registration_page.dart';

import '../../src/authentication/presentation/blocs/otp/otp_bloc.dart';
import '../../src/authentication/presentation/pages/login_page.dart';

class AppRouter {
  late GoRouter _router;

  GoRouter get router => _router;

  static final AppRouter _singleton = AppRouter._internal();

  factory AppRouter() {
    return _singleton;
  }

  AppRouter._internal();

  void init() {
    _router = _RouteConfiguration().configuredRouter;
  }
}

class _RouteConfiguration {
  GoRouter get configuredRouter => GoRouter(observers: [], routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const StartupPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/successRegistration',
          builder: (context, state) => const SuccessRegistrationPage(),
        ),
        GoRoute(
            path: '/login',
            builder: (context, state) => const LoginPage(),
            routes: [
              GoRoute(
                path: '/register',
                builder: (context, state) => const RegisterPage(),
              ),
              GoRoute(
                path: '/forgotPassword',
                builder: (context, state) => const ForgotPasswordPage(),
              ),
            ]),
        GoRoute(
          path: '/otp',
          builder: (context, state) {
            final queryParams = state.uri.queryParameters;

            final phone = queryParams['phone'] as String;
            final purposeString = queryParams['purpose'] as String;
            OTPPurpose? purpose;

            switch(purposeString){
              case 'registration':
                purpose = OTPPurpose.registration;
              case 'forgotPassword':
                purpose = OTPPurpose.forgotPassword;
            }

            LoginParams? loginParams;

            if (queryParams['username'] != null &&
                queryParams['password'] != null) {
              loginParams = LoginParams(
                username: queryParams['username'] as String,
                password: queryParams['password'] as String,
              );
            }

            return OtpPage(
              purpose: purpose!,
              phone: phone,
              loginParams: loginParams,
            );
          },
        ),
      ]);
}
