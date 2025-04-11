import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/forgot_password/create_password_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/otp_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/register_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/startup_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/pages/success_registration_page.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/presentation/pages/billing_statement_page.dart';
import 'package:mwd_concessionaire_portal/src/home_page.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/pages/link_account.dart';

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
    _router = _Configuration().configuredRouter;
  }
}

///
class _Configuration extends _RouteConfiguration {}

class _RouteConfiguration extends Route {
  GoRouter get configuredRouter => GoRouter(observers: [], routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const StartupPage(),
        ),
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: '/linkAccount',
              name: 'linkAccount',
              builder: (context, state) => const LinkAccount(),
            ),
            GoRoute(
              path: '/billingStatement',
              name: 'billingStatement',
              builder: (context, state) {
                final queryParams = state.extra as Map;
                final bill = queryParams['bill'] as BillingInformation;

                return BillingStatementPage(bill: bill);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/successRegistration',
          name: 'successRegistration',
          builder: (context, state) => const SuccessRegistrationPage(),
        ),
        GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) => const LoginPage(),
            routes: [
              GoRoute(
                path: '/register',
                name: 'register',
                builder: (context, state) => const RegisterPage(),
              ),
              GoRoute(
                path: '/forgotPassword',
                name: 'forgotPassword',
                builder: (context, state) => const ForgotPasswordPage(),
              ),
            ]),
        GoRoute(
          path: '/otp',
          name: 'otp',
          builder: (context, state) {
            final queryParams = state.uri.queryParameters;

            final phone = queryParams['phone'] as String;
            final purposeString = queryParams['purpose'] as String;
            OTPPurpose? purpose;

            switch (purposeString) {
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
        GoRoute(
          path: '/chooseNewPassword',
          name: 'chooseNewPassword',
          builder: (context, state) => const CreatePasswordPage(),
        ),
      ]);
}
