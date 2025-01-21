import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/sign_up_usecase.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final _signUpUsecase = GetIt.instance<SignUpUsecase>();

  SignUpBloc() : super(const SignUpState()) {
    on<_DoSignUp>(_doSignUp);
  }

  FutureOr<void> _doSignUp(
    _DoSignUp event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      signUpStatus: SignUpStatus.loading,
    ));

    final dataOrError = await _signUpUsecase(event.params);

    dataOrError.fold((failure) {
      emit(state.copyWith(
        signUpStatus: SignUpStatus.failed,
        message: failure.decodeError(),
      ));
    }, (successData) {
      emit(state.copyWith(
        signUpStatus: SignUpStatus.success,
      ));
    });
  }
}
