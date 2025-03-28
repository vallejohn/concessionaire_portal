import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/get_linked_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/link_new_account_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/set_default_account_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final _getAccountsUsecase = GetIt.instance<GetLinkedAccountsUsecase>();
  final _onLinkNewAccountUsecase = GetIt.instance<LinkNewAccountUsecase>();
  final _setDefaultAccountUsecase = GetIt.instance<SetDefaultAccountUsecase>();
  ProfileBloc() : super(const ProfileState()) {
    on<_OnRequestData>(_onRequestData);
    on<_OnSetDefaultAccount>(_onSetDefaultAccount);
    on<_OnLinkNewAccount>(_onLinkNewAccount);
    on<_OnSaveAccountAlias>(_onSaveAccountAlias);
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
          addAccountStatus: AddAccountStatus.loading,
        ),
      ),
    );

    final dataOrError = await _onLinkNewAccountUsecase(event.params);

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            addAccountStatus: AddAccountStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (account) {
      emit(state.copyWith(
        accountState: state.accountState.copyWith(
          addAccountStatus: AddAccountStatus.success,
          error: const DynamicError(message: 'Account added successfully')
        ),
      ));
    });
  }

  FutureOr<void> _onSaveAccountAlias(
    _OnSaveAccountAlias event,
    Emitter<ProfileState> emit,
  ) async {}

  FutureOr<void> _onSetDefaultAccount(
    _OnSetDefaultAccount event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          setDefaultAccountStatus: SetDefaultAccountStatus.loading,
        ),
      ),
    );

    final dataOrError = await _setDefaultAccountUsecase(event.accountNo);

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            setDefaultAccountStatus: SetDefaultAccountStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (saved) {
      List<Account> accounts = [...state.accountState.linkedAccounts];

      final defaultAccountIndex =
          accounts.indexWhere((e) => e.isDefault == true);
      accounts[defaultAccountIndex] =
          accounts[defaultAccountIndex].copyWith(isDefault: false);

      final index =
          accounts.indexWhere((e) => e.accountNumber == event.accountNo);
      accounts[index] = accounts[index].copyWith(isDefault: true);

      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            setDefaultAccountStatus: SetDefaultAccountStatus.success,
            linkedAccounts: accounts,
            error: const DynamicError(message: 'Account linked successfully'),
          ),
        ),
      );
    });
  }
}
