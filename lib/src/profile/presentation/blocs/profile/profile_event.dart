part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.onRequestData() = _OnRequestData;
  const factory ProfileEvent.onSetDefaultAccount(String accountNo) = _OnSetDefaultAccount;
  const factory ProfileEvent.onLinkNewAccount(
      LinkAccountParams params, String nickname) = _OnLinkNewAccount;
  const factory ProfileEvent.onSaveAccountAlias(Account account) = _OnSaveAccountAlias;
}
