import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/usecases/get_billing_history_usecase.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/usecases/get_payment_history_usecase.dart';

import '../../../../../core/exceptions/authentication_exception.dart';
import '../../../data/models/payment.dart';

part 'billing_information_event.dart';
part 'billing_information_state.dart';
part 'billing_information_bloc.freezed.dart';

typedef BillingInformationBlocDef
    = Bloc<BillingInformationEvent, BillingInformationState>;

class BillingInformationBloc extends BillingInformationBlocDef {
  final _getBillHistoryUsecase = GetIt.instance<GetBillingHistoryUsecase>();
  final _getPaymentHistoryUsecase = GetIt.instance<GetPaymentHistoryUsecase>();

  BillingInformationBloc() : super(const BillingInformationState()) {
    on<_OnRequestBillingHistory>(_onRequestBillingHistory);
    on<_OnRequestPaymentHistory>(_onRequestPaymentHistory);
  }

  FutureOr<void> _onRequestBillingHistory(
    _OnRequestBillingHistory event,
    Emitter<BillingInformationState> emit,
  ) async {
    emit(state.copyWith(status: BillingInformationStatus.loading));

    final dataOrFailure = await _getBillHistoryUsecase(
      BillingHistoryParams(accountNo: event.accountNumber),
    );

    dataOrFailure.fold(
      (error) {
        emit(state.copyWith(
          status: BillingInformationStatus.failed,
          error: error.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        ));
      },
      (success) {
        BillingInformation? latestBill;
        if (success.isNotEmpty) {
          latestBill = success.first;
        }

        emit(state.copyWith(
            status: BillingInformationStatus.success,
            billHistory: success,
            latestBill: latestBill));
      },
    );
  }

  FutureOr<void> _onRequestPaymentHistory(
    _OnRequestPaymentHistory event,
    Emitter<BillingInformationState> emit,
  ) async {
    PaymentState paymentState = state.paymentState;

    paymentState = paymentState.copyWith(
      status: PaymentStatus.loading,
    );

    emit(state.copyWith(
      paymentState: paymentState,
    ));

    final dataOrFailure = await _getPaymentHistoryUsecase(
      PaymentParams(accountNo: event.accountNumber),
    );

    dataOrFailure.fold(
      (error) {
        paymentState = paymentState.copyWith(
          status: PaymentStatus.failed,
          error: error.whenOrNull(
            exception: (error) => (error as ServerException).value,
          ),
        );

        emit(state.copyWith(paymentState: paymentState));
      },
      (payments) {
        paymentState = paymentState.copyWith(
          status: PaymentStatus.success,
          payments: payments
        );

        emit(state.copyWith(paymentState: paymentState));
      },
    );
  }
}
