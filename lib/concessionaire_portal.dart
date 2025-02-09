import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/otp/otp_bloc.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/sign_up/sign_up_bloc.dart';

import 'core/router/app_router.dart';
import 'core/util/theme.dart';

class ConcessionairePortal extends StatelessWidget {
  const ConcessionairePortal({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => SignUpBloc()),
        BlocProvider(create: (context) => OtpBloc()),
      ],
      child: MaterialApp.router(
        title: 'Concessionaire Portal',
        theme: AppTheme.light(),
        routeInformationParser: AppRouter().router.routeInformationParser,
        routeInformationProvider: AppRouter().router.routeInformationProvider,
        routerDelegate: AppRouter().router.routerDelegate,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1)),
            child: child!,
          );
        },
      ),
    );
  }
}
