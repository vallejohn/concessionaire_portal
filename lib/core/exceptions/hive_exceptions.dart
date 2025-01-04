import 'package:hive/hive.dart';

enum CollectionExceptionCode { duplicateKey, emptyCollection }

abstract class ExceptionBase extends HiveError{
  final CollectionExceptionCode code;
  ExceptionBase(this.code, {String? message}) : super(message?? '');
}

extension CollectionExceptionCodeMessage on CollectionExceptionCode{
  String getMessage(){
    switch(this){
      case CollectionExceptionCode.duplicateKey:
        return 'Key already exists';
      case CollectionExceptionCode.emptyCollection:
        return 'No records found';
    }
  }
}

class HiveCollectionException extends ExceptionBase {
  HiveCollectionException(super.code)
      : super(message: code.getMessage());
}

HiveCollectionException duplicateKeyException() => HiveCollectionException(
    CollectionExceptionCode.duplicateKey);

HiveCollectionException emptyCollectionException() =>
    HiveCollectionException(CollectionExceptionCode.emptyCollection);