import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/models/user.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/request_auth_status_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _requestAuthentication = GetIt.instance<RequestAuthStatusUsecase>();

  LoginBloc() : super(const LoginState()) {
    on<_OnRequestAuthenticationStatus>(_onRequestAuthenticationStatus);
  }

  String _getErrorMessage(Failure failure){
    return failure.when(
      authentication: (authError) => authError.message,
      hiveCollectionException: (hiveError) => hiveError.message,
    );
  }

  FutureOr<void> _onRequestAuthenticationStatus(
    _OnRequestAuthenticationStatus event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));

    final dataOrError = await _requestAuthentication();

    dataOrError.fold(
      (error) {
        emit(state.copyWith(
          loginStatus: LoginStatus.failed,
          message: _getErrorMessage(error)
        ));
      },
      (user) {
        emit(state.copyWith(
          loginStatus: LoginStatus.success,
          user: user
        ));
      },
    );
  }
}
