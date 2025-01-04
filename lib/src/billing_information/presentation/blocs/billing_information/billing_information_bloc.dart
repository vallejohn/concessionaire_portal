import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mwd_concessionaire_portal/core/util/mock_data.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

part 'billing_information_event.dart';
part 'billing_information_state.dart';
part 'billing_information_bloc.freezed.dart';

typedef BillingInformationBlocDef
    = Bloc<BillingInformationEvent, BillingInformationState>;

class BillingInformationBloc extends BillingInformationBlocDef {
  BillingInformationBloc() : super(const BillingInformationState()) {
    on<_OnRequestBillingHistory>(_onRequestBillingHistory);
  }

  FutureOr<void> _onRequestBillingHistory(
    _OnRequestBillingHistory event,
    Emitter<BillingInformationState> emit,
  ) async {
    emit(state.copyWith(status: BillingInformationStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(
      status: BillingInformationStatus.success,
      billHistory: MockData.billingHistory(),
    ));
  }
}
