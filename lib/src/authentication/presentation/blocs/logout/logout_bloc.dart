import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/logout_usecase.dart';

import '../../../../../core/exceptions/authentication_exception.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final _logoutUsecase = GetIt.instance<LogoutUsecase>();

  LogoutBloc() : super(const LogoutState()) {
    on<_OnLogout>(_onLogout);
  }

  FutureOr<void> _onLogout(
    _OnLogout event,
    Emitter<LogoutState> emit,
  ) async {
    emit(state.copyWith(status: LogoutStatus.loading));

    final dataOrError = await _logoutUsecase();

    dataOrError.fold(
      (failure) {
        emit(state.copyWith(
          status: LogoutStatus.failed,
          errors: failure.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        ));
      },
      (user) {
        emit(state.copyWith(
          status: LogoutStatus.success,
        ));
      },
    );
  }
}
