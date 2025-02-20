import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/confirm_otp_usecase.dart';

import '../../../../../core/exceptions/authentication_exception.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final _confirmOTPUsecase = GetIt.instance<ConfirmOTPUsecase>();

  OtpBloc() : super(const OtpState()) {
    on<_OnConfirmOTP>(_onConfirmOTP);
  }

  FutureOr<void> _onConfirmOTP(
    _OnConfirmOTP event,
    Emitter<OtpState> emit,
  ) async {
    emit(state.copyWith(
      status: OTPStatus.loading,
    ));
    Logger().i('is phone ${event.param.phone}');
    final dataOrError = await _confirmOTPUsecase(event.param);

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          status: OTPStatus.failed,
          errors: failure.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        ));
      },
      (user) {
        emit(state.copyWith(
          status: OTPStatus.success,
        ));
      },
    );
  }
}
