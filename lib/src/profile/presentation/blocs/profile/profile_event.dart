part of 'profile_bloc.dart';

enum AccountNavigation {previous, next}

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.onRequestData() = _OnRequestData;
  const factory ProfileEvent.onSetDefaultAccount(String accountNo) = _OnSetDefaultAccount;
  const factory ProfileEvent.onNavigateAccount(AccountNavigation navigation) = _OnNavigateAccount;
  const factory ProfileEvent.onLinkNewAccount(
      LinkAccountParams params, String nickname) = _OnLinkNewAccount;
  const factory ProfileEvent.onSaveAccountAlias(Account account) = _OnSaveAccountAlias;
}
