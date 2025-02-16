import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/forgot_password_usecase.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final _forgotPasswordUsecase = GetIt.instance<ForgotPasswordUsecase>();
  ForgotPasswordBloc() : super(const ForgotPasswordState()) {
    on<_OnVerifyMobile>(_onVerifyMobile);
  }

  FutureOr<void> _onVerifyMobile(
    _OnVerifyMobile event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    final dataOrError = await _forgotPasswordUsecase(event.params);

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          status: ForgotPasswordStatus.failed,
          message: failure.decodeError(),
        ));
      },
      (phone) {
        Logger().i('ngeehh: $phone');
        emit(state.copyWith(
          status: ForgotPasswordStatus.success,
          phone: phone,
        ));
      },
    );
  }
}
