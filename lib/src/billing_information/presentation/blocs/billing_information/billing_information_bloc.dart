import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

part 'billing_information_event.dart';
part 'billing_information_state.dart';
part 'billing_information_bloc.freezed.dart';

class BillingInformationBloc extends Bloc<BillingInformationEvent, BillingInformationState> {
  BillingInformationBloc() : super(const BillingInformationState()) {
    on<BillingInformationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
