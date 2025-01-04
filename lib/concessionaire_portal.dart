import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';

import 'core/router/app_router.dart';
import 'core/util/theme.dart';

class ConcessionairePortal extends StatelessWidget {
  const ConcessionairePortal({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
      ],
      child: MaterialApp.router(
        title: 'Concessionaire Portal',
        theme: AppTheme.light(),
        routeInformationParser: AppRouter().router.routeInformationParser,
        routeInformationProvider: AppRouter().router.routeInformationProvider,
        routerDelegate: AppRouter().router.routerDelegate,
      ),
    );
  }
}
