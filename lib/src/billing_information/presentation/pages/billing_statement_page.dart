import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/concessionaire_portal.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';

import '../../data/models/billing_information.dart';

class BillingStatementPage extends StatefulWidget {
  final BillingInformation bill;
  const BillingStatementPage({super.key, required this.bill});

  @override
  State<BillingStatementPage> createState() => _BillingStatementPageState();
}

class _BillingStatementPageState extends State<BillingStatementPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    item(String label, String value, {bool isLastItem = false}) {
      return Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: textStyle.bodyLarge
                    ?.copyWith(color: Colors.black.withOpacity(0.6)),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(child: DottedLine()),
              const SizedBox(
                width: 10,
              ),
              Text(
                value,
                style:
                    textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          if (!isLastItem) ...[
            const SizedBox(height: 20),
          ]
        ],
      );
    }

    totalAmountDue(){
      final bill = widget.bill;
      return (bill.currentCharge - bill.discount) + bill.mrrf + bill.arrears;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              const SizedBox(height: 30),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Murcia Water District',
                      style: textStyle.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Murcia Negros Occidental',
                      style: textStyle.bodyMedium?.copyWith(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'STATEMENT OF ACCOUNT',
                      style: textStyle.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      item(
                        'Account No',
                        widget.bill.accountNo,
                      ),
                      item(
                        'Name',
                        widget.bill.name,
                      ),
                      item(
                        'Bill No',
                        widget.bill.billNo,
                      ),
                      item(
                        'Address',
                        widget.bill.address,
                      ),
                      item(
                        'Meter No.',
                        widget.bill.meterNo,
                      ),
                      item(
                        'Class Type',
                        widget.bill.classType,
                        isLastItem: true,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      item(
                        'Billing Month',
                        widget.bill.billMonth.toMonthYear(),
                      ),
                      item(
                        'Reading Date',
                        widget.bill.readingDate.toMonthDayYear(),
                      ),
                      item(
                        'Due Date',
                        widget.bill.dueDate.toMonthDayYear(),
                      ),
                      item(
                        'Disconnection Date',
                        widget.bill.disconnectionDate.toMonthDayYear(),
                        isLastItem: true,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'READING',
                        style: textStyle.titleMedium,
                      ),
                      const SizedBox(height: 20),
                      item(
                        'Previous Reading',
                        widget.bill.previousReading.toString(),
                      ),
                      item(
                        'Current Reading',
                        widget.bill.currentReading.toString(),
                      ),
                      item(
                        'Consumption',
                        widget.bill.consumption.toString(),
                        isLastItem: true,
                      ),
                      const SizedBox(height: 50),
                      item(
                        'Current Charge',
                        widget.bill.currentCharge.toStringAsFixed(2),
                      ),
                      item(
                        'Arrears',
                        widget.bill.arrears.toStringAsFixed(2),
                      ),
                      item(
                        'Discounts (SC)',
                        widget.bill.discount.toStringAsFixed(2),
                      ),
                      item(
                        'MRRF',
                        widget.bill.mrrf.toStringAsFixed(2),
                      ),
                      item(
                        'Total Amount Due\nUNTIL Due Date',
                        totalAmountDue().toStringAsFixed(2),
                        isLastItem: true,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Meter reader: ${widget.bill.meterReaderName}',
                style: textStyle.bodyLarge
                    ?.copyWith(color: Colors.black.withOpacity(0.6)),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'Please pay your water bill on or before due date. A penalty of ten '
                          'percent (10%) will be charged if payment is made after the due'
                          'date. Water service will be disconnected if payment is not made '
                          'five(5) days after due date. Kindly present your Statement of '
                          'Account when paying.',
                          textAlign: TextAlign.justify,
                          style: textStyle.bodyMedium?.copyWith(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: FilledButton(
                onPressed: () {
                  context.pushNamed('payments',
                    queryParameters: {
                    'account_no': widget.bill.accountNo
                    }
                  );
                },
                child: const Text('View Payment History'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
