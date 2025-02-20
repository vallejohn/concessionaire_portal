import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/create_password_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/forgot_password_usecase.dart';

import '../../../../../core/exceptions/authentication_exception.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final _forgotPasswordUsecase = GetIt.instance<ForgotPasswordUsecase>();
  final _createPasswordUsecase = GetIt.instance<CreatePasswordUsecase>();
  ForgotPasswordBloc() : super(const ForgotPasswordState()) {
    on<_OnVerifyMobile>(_onVerifyMobile);
    on<_OnCreateNewPassword>(_onCreateNewPassword);
  }

  FutureOr<void> _onVerifyMobile(
    _OnVerifyMobile event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
      username: event.params.username,
    ));

    final dataOrError = await _forgotPasswordUsecase(event.params);

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          status: ForgotPasswordStatus.failed,
          errors: failure.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        ));
      },
      (phone) {
        emit(state.copyWith(
          status: ForgotPasswordStatus.success,
          phone: phone,
        ));
      },
    );
  }

  FutureOr<void> _onCreateNewPassword(
    _OnCreateNewPassword event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(
      createStatus: CreatePasswordStatus.loading,
    ));

    final dataOrError = await _createPasswordUsecase(
      event.params.copyWith(
        username: state.username,
      ),
    );

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          createStatus: CreatePasswordStatus.failed,
          errors: failure.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        ));
      },
      (phone) {
        emit(state.copyWith(
          createStatus: CreatePasswordStatus.success,
        ));
      },
    );
  }
}
