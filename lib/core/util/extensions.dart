import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';

extension FailureExtension on Failure{
  String decodeError(){
    return when(
      exception: (exception) => exception.value as String,
      hiveCollectionException: (hiveError) => hiveError.message,
    );
  }
}