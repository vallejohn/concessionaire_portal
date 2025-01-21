import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

class EmailValidator extends FormzInput<String, String> {
  const EmailValidator.pure() : super.pure('');

  const EmailValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is empty';
    } else if (!_isValidEmail(value)) {
      return 'Invalid email';
    }
    return null;
  }

  bool _isValidEmail(String value) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9])*@[a-zA-Z0-9]+(\.[a-zA-Z]{2,})+$',
    );
    return emailRegex.hasMatch(value);
  }
}

enum PasswordValidationError { empty, tooShort }

class PasswordValidator extends FormzInput<String, String> {
  const PasswordValidator.pure() : super.pure('');

  const PasswordValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is empty';
    } else if (value.length < 8) {
      return 'Password too short';
    }
    return null; // Valid input.
  }
}
