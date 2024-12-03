part of 'billing_information_bloc.dart';

@freezed
class BillingInformationEvent with _$BillingInformationEvent {
  const factory BillingInformationEvent.onRequestBillingHistory() = _OnRequestBillingHistory;
}
