import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/get_linked_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/link_new_account_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final _getAccountsUsecase = GetIt.instance<GetLinkedAccountsUsecase>();
  final _onLinkNewAccountUsecase = GetIt.instance<LinkNewAccountUsecase>();
  ProfileBloc() : super(const ProfileState()) {
    on<_OnRequestData>(_onRequestData);
    on<_OnLinkNewAccount>(_onLinkNewAccount);
  }

  FutureOr<void> _onRequestData(
    _OnRequestData event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          status: AccountStatus.loading,
        ),
      ),
    );

    final dataOrError = await _getAccountsUsecase();

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            status: AccountStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            status: AccountStatus.success,
            linkedAccounts: data,
          ),
        ),
      );
    });
  }

  FutureOr<void> _onLinkNewAccount(
      _OnLinkNewAccount event,
      Emitter<ProfileState> emit,
      ) async {
    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          status: AccountStatus.loading,
        ),
      ),
    );

    final dataOrError = await _onLinkNewAccountUsecase(event.params);

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            status: AccountStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            status: AccountStatus.success,
          ),
        ),
      );
    });
  }
}
