import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  BlocListener<LoginBloc, LoginState> _startupAuthListener({
    required Widget child,
  }) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        final status = state.checkAuthStatus;
        final user = state.user;

        if (status == CheckAuthStatus.success) {
          if (user.authStatus == AuthenticationStatus.unauthenticated) {
            context.go('/login');
          }

          if (user.authStatus == AuthenticationStatus.authenticated) {
            context.go('/home');
          }
        }
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>.value(
      value: BlocProvider.of<LoginBloc>(context)
        ..add(const LoginEvent.onRequestAuthenticationStatus()),
      child: Scaffold(
        body: _startupAuthListener(
          child: const Center(
            child: SizedBox(
              width: 100,
              child: LinearProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
