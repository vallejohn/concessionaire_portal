import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/presentation/blocs/billing_information/billing_information_bloc.dart';

class PaymentsPage extends StatefulWidget {
  final String accountNumber;
  const PaymentsPage({super.key, required this.accountNumber});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final ScrollController _horizontalScroll = ScrollController();
  final ScrollController _verticalScroll = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<BillingInformationBloc>(context).add(
      BillingInformationEvent.onRequestPaymentHistory(widget.accountNumber),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    final paymentState = context.watch<BillingInformationBloc>()
        .state.paymentState;
    final payments = paymentState.payments;
    final paymentLoading = paymentState.status == PaymentStatus.loading;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Payments',
                style: textStyle.displayMedium
                    ?.copyWith(color: Theme.of(context).primaryColor)),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Scrollbar(
              controller: _verticalScroll,
              thumbVisibility: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                controller: _verticalScroll,
                child: Scrollbar(
                  controller: _horizontalScroll,
                  thumbVisibility: true,
                  notificationPredicate: (notif) => notif.metrics.axis == Axis.horizontal,
                  child: SingleChildScrollView(
                    controller: _horizontalScroll,
                    scrollDirection: Axis.horizontal,
                    child: DataTable(columns: const [
                      DataColumn(label: Text('Reference')),
                      DataColumn(label: Text('Transaction Date')),
                      DataColumn(label: Text('Particulars')),
                      DataColumn(label: Text('Reading')),
                      DataColumn(label: Text('Usage')),
                      DataColumn(label: Text('Debit')),
                      DataColumn(label: Text('Credit')),
                      DataColumn(label: Text('Balance')),
                    ], rows: List.generate(payments.length, (index){
                      final payment = payments[index];
                      return DataRow(cells: [
                        DataCell(Text(payment.referenceNumber)),
                        DataCell(Text(payment.transactionDate)),
                        DataCell(Text(payment.referenceName)),
                        DataCell(Text(payment.reading.toString())),
                        DataCell(Text(payment.usage.toString())),
                        DataCell(Text(payment.debit.toString())),
                        DataCell(Text(payment.credit.toString())),
                        DataCell(Text(payment.balance.toString())),
                      ]);
                    }),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
