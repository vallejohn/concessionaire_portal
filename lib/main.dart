import 'package:flutter/material.dart';
import 'package:mwd_concessionaire_portal/concessionaire_portal.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  AppRouter().init();

  runApp(const ConcessionairePortal());
}
