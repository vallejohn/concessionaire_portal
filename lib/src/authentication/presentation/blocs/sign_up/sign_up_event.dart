part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.doSignUp(SignUpParams params) = _DoSignUp;
}
