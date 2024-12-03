import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/util/theme.dart';

class ConcessionairePortal extends StatelessWidget {
  const ConcessionairePortal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Concessionaire Portal',
      theme: AppTheme.light(),
      routeInformationParser: AppRouter().router.routeInformationParser,
      routeInformationProvider: AppRouter().router.routeInformationProvider,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
