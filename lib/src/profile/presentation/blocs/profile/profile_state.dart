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

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(AccountStatus.initial) AccountStatus status,
    @Default(AddAccountStatus.initial) AddAccountStatus addAccountStatus,
    @Default(SetDefaultAccountStatus.initial) SetDefaultAccountStatus setDefaultAccountStatus,
    DynamicError? error,
    @Default([]) List<Account> linkedAccounts,
  }) = _AccountState;
}
