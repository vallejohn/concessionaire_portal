part of 'sign_up_bloc.dart';

enum SignUpStatus {initial, loading, success, failed}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(SignUpStatus.initial) SignUpStatus signUpStatus,
    @Default('') String message,
  }) = _SignUpState;

}
