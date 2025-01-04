import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mwd_concessionaire_portal/concessionaire_portal.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';
import 'package:mwd_concessionaire_portal/locator.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  final Logger _logger = Logger(
    printer: PrettyPrinter(methodCount: 0, printTime: true),
  );

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.i({
      'type': 'Event',
      'bloc': bloc.runtimeType.toString(),
      'event': event.toString(),
    });
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.i({
      'type': 'Change',
      'bloc': bloc.runtimeType.toString(),
      'currentState': change.currentState.toString(),
      'nextState': change.nextState.toString(),
    });
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logger.i({
      'type': 'Transition',
      'bloc': bloc.runtimeType.toString(),
      'currentState': transition.currentState.toString(),
      'event': transition.event.toString(),
      'nextState': transition.nextState.toString(),
    });
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger.e({
      'type': 'Error',
      'bloc': bloc.runtimeType.toString(),
      'error': error.toString(),
      'stackTrace': stackTrace.toString(),
    });
  }
}


void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  AppRouter().init();

  await setupLocator();

  runApp(const ConcessionairePortal());
}
