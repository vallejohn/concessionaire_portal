import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/login_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/request_auth_status_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _requestAuthentication = GetIt.instance<RequestAuthStatusUsecase>();
  final _doLoginUsecase = GetIt.instance<LoginUsecase>();

  LoginBloc() : super(const LoginState()) {
    on<_OnRequestAuthenticationStatus>(_onRequestAuthenticationStatus);
    on<_DoLogin>(_doLogin);
  }

  FutureOr<void> _onRequestAuthenticationStatus(
    _OnRequestAuthenticationStatus event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      checkAuthStatus: CheckAuthStatus.loading,
    ));

    final dataOrError = await _requestAuthentication();

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          checkAuthStatus: CheckAuthStatus.failed,
          message: failure.decodeError(),
        ));
      },
      (user) {
        emit(state.copyWith(
          checkAuthStatus: CheckAuthStatus.success,
          user: user,
        ));
      },
    );
  }

  FutureOr<void> _doLogin(
    _DoLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      loginStatus: LoginStatus.loading,
    ));

    final dataOrError = await _doLoginUsecase(event.param);

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          loginStatus: LoginStatus.failed,
          message: failure.decodeError(),
        ));
      },
      (user) {
        emit(state.copyWith(
          loginStatus: LoginStatus.success,
          user: user,
        ));
      },
    );
  }
}
