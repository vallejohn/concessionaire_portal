import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/delete_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/get_linked_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/link_new_account_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/save_account_alias_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/set_default_account_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final _getAccountsUsecase = GetIt.instance<GetLinkedAccountsUsecase>();
  final _onLinkNewAccountUsecase = GetIt.instance<LinkNewAccountUsecase>();
  final _setDefaultAccountUsecase = GetIt.instance<SetDefaultAccountUsecase>();
  final _saveAccountAliasUsecase = GetIt.instance<SaveAccountAliasUsecase>();
  final _deleteAccountsUsecase = GetIt.instance<DeleteAccountsUsecase>();

  ProfileBloc() : super(const ProfileState()) {
    on<_OnRequestData>(_onRequestData);
    on<_OnSetDefaultAccount>(_onSetDefaultAccount);
    on<_OnLinkNewAccount>(_onLinkNewAccount);
    on<_OnSaveAccountAlias>(_onSaveAccountAlias);
    on<_OnNavigateAccount>(_onNavigateAccount);
    on<_OnActivateDeleteSelection>(_onActivateDeleteSelection);
    on<_OnUpdateDeletionList>(_onUpdateDeletionList);
    on<_OnExecuteDeletion>(_onExecuteDeletion);
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
      Account? defaultAccount;

      if (data.isNotEmpty) {
        int defaultAccountIndex = data.indexWhere((e) => e.isDefault == true);
        defaultAccount = data[defaultAccountIndex];

        if (data.remove(defaultAccount)) {
          data.insert(0, defaultAccount);
        }

        defaultAccountIndex = data.indexWhere((e) => e.isDefault == true);
        defaultAccount = data[defaultAccountIndex];
      }

      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            status: AccountStatus.success,
            defaultAccount: defaultAccount,
            displayedAccount: defaultAccount,
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
            error: const DynamicError(message: 'Account added successfully')),
      ));
    });
  }

  FutureOr<void> _onSaveAccountAlias(
    _OnSaveAccountAlias event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          saveAccountAliasStatus: SaveAccountAliasStatus.loading,
        ),
      ),
    );

    final dataOrError = await _saveAccountAliasUsecase(event.account);

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            saveAccountAliasStatus: SaveAccountAliasStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (success) {
      List<Account> accounts = [...state.accountState.linkedAccounts];
      final index = accounts
          .indexWhere((e) => e.accountNumber == event.account.accountNumber);
      accounts[index] = accounts[index].copyWith(alias: event.account.alias);

      emit(state.copyWith(
        accountState: state.accountState.copyWith(
          saveAccountAliasStatus: SaveAccountAliasStatus.success,
          error: const DynamicError(message: 'Alias saved successfully'),
          linkedAccounts: accounts,
        ),
      ));
    });
  }

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
            defaultAccount: accounts[index],
            error: const DynamicError(message: 'Account linked successfully'),
          ),
        ),
      );
    });
  }

  int initialIndex = 0;

  FutureOr<void> _onNavigateAccount(
    _OnNavigateAccount event,
    Emitter<ProfileState> emit,
  ) async {
    List<Account> accounts = [...state.accountState.linkedAccounts];
    final accountLength = accounts.length;

    switch (event.navigation) {
      case AccountNavigation.previous:
        Logger().i(AccountNavigation.previous);
        if (initialIndex > 0) {
          initialIndex -= 1;
        } else {
          initialIndex = accountLength - 1;
        }
      case AccountNavigation.next:
        Logger().i(AccountNavigation.next);
        if (initialIndex < accountLength - 1 &&
            initialIndex != accountLength - 1) {
          Logger().w('1');
          initialIndex += 1;
        } else {
          Logger().w('2');
          initialIndex = 0;
        }
    }

    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          displayedAccount: accounts[initialIndex],
        ),
      ),
    );
  }

  FutureOr<void> _onActivateDeleteSelection(
    _OnActivateDeleteSelection event,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          accountDeleteSelection: !state.accountState.accountDeleteSelection,
        ),
      ),
    );
  }

  FutureOr<void> _onUpdateDeletionList(
    _OnUpdateDeletionList event,
    Emitter<ProfileState> emit,
  ) async {
    List<Account> deletionList = [...state.accountState.deletionList];

    if (!event.remove) {
      deletionList.add(event.account);
    } else {
      deletionList.remove(event.account);
    }

    emit(
      state.copyWith(
        accountState: state.accountState.copyWith(
          deletionList: deletionList,
          accountDeleteSelection: deletionList.isNotEmpty
        ),
      ),
    );
  }

  FutureOr<void> _onExecuteDeletion(
    _OnExecuteDeletion event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
      accountState: state.accountState.copyWith(
        accountDeletionStatus: AccountDeletionStatus.loading,
      ),
    ));

    List<Account> linkedAccounts = [...state.accountState.linkedAccounts];
    List<Account> deletionList = [...state.accountState.deletionList];

    final deletionListAccountNos = deletionList.map((e) => e.accountNumber).toList();

    final dataOrError = await _deleteAccountsUsecase(DeleteAccountsParam(accountNos: deletionListAccountNos));

    dataOrError.fold((error) {
      emit(
        state.copyWith(
          accountState: state.accountState.copyWith(
            accountDeletionStatus: AccountDeletionStatus.failed,
            error: error.whenOrNull(
              exception: (error) => (error as ServerException).value,
            ),
          ),
        ),
      );
    }, (account) {
      linkedAccounts.removeWhere((e) => deletionList.contains(e));

      emit(state.copyWith(
        accountState: state.accountState.copyWith(
            accountDeletionStatus: AccountDeletionStatus.success,
            linkedAccounts: linkedAccounts,
            accountDeleteSelection: false,
            deletionList: [],
            error: const DynamicError(message: 'Accounts deleted successfully')),
      ));
    });
  }
}
