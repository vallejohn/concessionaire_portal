import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';

extension FailureExtension on Failure{
  String decodeError(){
    return when(
      authentication: (authError) => authError.message,
      hiveCollectionException: (hiveError) => hiveError.message,
    );
  }
}