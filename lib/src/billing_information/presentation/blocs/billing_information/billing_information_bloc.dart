import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/usecases/get_billing_history_usecase.dart';

import '../../../../../core/exceptions/authentication_exception.dart';

part 'billing_information_event.dart';
part 'billing_information_state.dart';
part 'billing_information_bloc.freezed.dart';

typedef BillingInformationBlocDef
    = Bloc<BillingInformationEvent, BillingInformationState>;

class BillingInformationBloc extends BillingInformationBlocDef {
  final _getBillHistoryUsecase = GetIt.instance<GetBillingHistoryUsecase>();

  BillingInformationBloc() : super(const BillingInformationState()) {
    on<_OnRequestBillingHistory>(_onRequestBillingHistory);
  }

  FutureOr<void> _onRequestBillingHistory(
    _OnRequestBillingHistory event,
    Emitter<BillingInformationState> emit,
  ) async {
    emit(state.copyWith(status: BillingInformationStatus.loading));

    final dataOrFailure = await _getBillHistoryUsecase(
      const BillingHistoryParams(
        accountNo: '21112007771',
      ),
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
        if(success.isNotEmpty){
          latestBill = success.first;
        }

        emit(state.copyWith(
          status: BillingInformationStatus.success,
          billHistory: success,
          latestBill: latestBill
        ));
      },
    );
  }
}
