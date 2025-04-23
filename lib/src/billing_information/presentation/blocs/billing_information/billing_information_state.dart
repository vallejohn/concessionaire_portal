part of 'billing_information_bloc.dart';

enum BillingInformationStatus {initial, loading, success, failed}

@freezed
class BillingInformationState with _$BillingInformationState {
  const factory BillingInformationState({
    @Default(BillingInformationStatus.initial) BillingInformationStatus status,
    DynamicError? error,
    @Default([]) List<BillingInformation> billHistory,
    BillingInformation? latestBill,
    @Default(PaymentState()) PaymentState paymentState,
  }) = _BillingInformationState;
}

enum PaymentStatus {initial, loading, success, failed}

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(PaymentStatus.initial) PaymentStatus status,
    DynamicError? error,
    @Default([]) List<Payment> payments,
  }) = _PaymentState;
}
