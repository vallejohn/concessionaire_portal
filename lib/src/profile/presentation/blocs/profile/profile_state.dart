part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(AccountState()) AccountState accountState,
  }) = _ProfileState;
}

enum AccountStatus {initial, loading, success, failed}
enum AddAccountStatus {initial, loading, success, failed}
enum SetDefaultAccountStatus {initial, loading, success, failed}
enum SaveAccountAliasStatus {initial, loading, success, failed}
enum AccountDeletionStatus {initial, loading, success, failed}

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(AccountStatus.initial) AccountStatus status,
    @Default(AddAccountStatus.initial) AddAccountStatus addAccountStatus,
    @Default(AccountDeletionStatus.initial) AccountDeletionStatus accountDeletionStatus,
    @Default(SetDefaultAccountStatus.initial) SetDefaultAccountStatus setDefaultAccountStatus,
    @Default(SaveAccountAliasStatus.initial) SaveAccountAliasStatus saveAccountAliasStatus,
    DynamicError? error,
    @Default(false) bool accountDeleteSelection,
    @Default([]) List<Account> linkedAccounts,
    @Default([]) List<Account> deletionList,
    Account? defaultAccount,
    Account? displayedAccount,
  }) = _AccountState;
}
