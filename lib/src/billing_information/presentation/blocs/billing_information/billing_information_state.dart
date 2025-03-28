part of 'billing_information_bloc.dart';

enum BillingInformationStatus {initial, loading, success, failed}

@freezed
class BillingInformationState with _$BillingInformationState {
  const factory BillingInformationState({
    @Default(BillingInformationStatus.initial) BillingInformationStatus status,
    DynamicError? error,
    @Default([]) List<BillingInformation> billHistory,
  }) = _BillingInformationState;
}
