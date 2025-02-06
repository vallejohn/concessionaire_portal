import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

class EmailValidator extends FormzInput<String?, String> {
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

class PasswordValidator extends FormzInput<String?, String> {
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

class ConfirmPasswordValidator extends FormzInput<String?, String> {
  const ConfirmPasswordValidator.pure(this.matchTo) : super.pure('');

  const ConfirmPasswordValidator.dirty(this.matchTo, [super.value = ''])
      : super.dirty();

  final String matchTo;

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) return 'Please re-enter your password';
    if (value != matchTo) return 'Password does not match';
    return null;
  }
}

class PhoneNumberValidator extends FormzInput<String?, String> {
  const PhoneNumberValidator.pure() : super.pure('');

  const PhoneNumberValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    final regex = RegExp(r'^(09\d{9}|(\+639)\d{9})$');

    if (value == null || value.isEmpty) {
      return 'Phone number is empty';
    } else if (!regex.hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }
}

class SpecialCharacterValidator extends FormzInput<String?, String> {
  const SpecialCharacterValidator.pure() : super.pure('');

  const SpecialCharacterValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    final regex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (value == null || value.isEmpty) {
      return 'Field is empty';
    } else if (regex.hasMatch(value)) {
      return 'Special characters are not allowed';
    }
    return null;
  }
}

class EmptyFieldValidator extends FormzInput<String?, String> {
  const EmptyFieldValidator.pure() : super.pure('');

  const EmptyFieldValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}
