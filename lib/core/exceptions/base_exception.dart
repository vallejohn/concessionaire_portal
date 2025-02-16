abstract class BaseException<T> implements Exception{
  final T value;
  BaseException({required this.value});
}