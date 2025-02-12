import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:mwd_concessionaire_portal/main.dart' as base;


class Environment{
  static const String staging = 'STAGING';
  static const String production = 'PRODUCTION';
}

void main(){
  FlavorConfig(
    name: Environment.staging,
    variables: {
      'baseUrl': 'https://sg.talisaywaterdistrict.gov.ph'
    }
  );

  return base.main();
}