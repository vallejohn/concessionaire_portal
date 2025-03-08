part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.onRequestData() = _OnRequestData;
  const factory ProfileEvent.onLinkNewAccount(LinkAccountParams params, String nickname) = _OnLinkNewAccount;
}
