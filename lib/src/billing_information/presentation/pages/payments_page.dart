import 'package:flutter/material.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final ScrollController _horizontalScroll = ScrollController();
  final ScrollController _verticalScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
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
                child: Scrollbar(
                  controller: _horizontalScroll,
                  thumbVisibility: true,
                  notificationPredicate: (notif) => notif.metrics.axis == Axis.horizontal,
                  child: SingleChildScrollView(
                    controller: _horizontalScroll,
                    scrollDirection: Axis.horizontal,
                    child: DataTable(columns: [
                      DataColumn(label: Text('Reference')),
                      DataColumn(label: Text('Transaction Date')),
                      DataColumn(label: Text('Particulars')),
                      DataColumn(label: Text('Reading')),
                      DataColumn(label: Text('Usage')),
                      DataColumn(label: Text('Debit')),
                      DataColumn(label: Text('Credit')),
                      DataColumn(label: Text('Balance')),
                    ], rows: List.generate(100, (index){
                      return DataRow(cells: [
                        DataCell(Text('00526478')),
                        DataCell(Text('01/05/2024')),
                        DataCell(Text('Water Bill')),
                        DataCell(Text('')),
                        DataCell(Text('13')),
                        DataCell(Text('260.70')),
                        DataCell(Text('')),
                        DataCell(Text('970.60')),
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
