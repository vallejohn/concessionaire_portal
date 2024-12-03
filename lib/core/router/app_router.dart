import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/demo_pages/home_page.dart';

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
  GoRouter get configuredRouter => GoRouter(
      observers: [
      ],
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
      ]
  );
}