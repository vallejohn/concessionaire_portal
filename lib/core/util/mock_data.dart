import 'package:mwd_concessionaire_portal/src/billing_information/data/models/billing_information.dart';

class MockData{
  static List<BillingInformation> billingHistory(){
    return const [
      BillingInformation(
        billMonth: 'November 2024',
        amountDue: 986.20,
        billNo: '00603490',
        paymentDate: 'November 16, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'October 2024',
        amountDue: 180.75,
        billNo: '00123465',
        paymentDate: 'October 24, 2024',
        status: 'Overdue',
      ),
      BillingInformation(
        billMonth: 'September 2024',
        amountDue: 200.00,
        billNo: '00123464',
        paymentDate: 'September 23, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'August 2024',
        amountDue: 170.50,
        billNo: '00123463',
        paymentDate: 'August 22, 2024',
        status: 'Unpaid',
      ),
      BillingInformation(
        billMonth: 'July 2024',
        amountDue: 160.90,
        billNo: '00123462',
        paymentDate: 'July 21, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'June 2024',
        amountDue: 140.60,
        billNo: '00123461',
        paymentDate: 'June 20, 2024',
        status: 'Unpaid',
      ),
      BillingInformation(
        billMonth: 'May 2024',
        amountDue: 130.80,
        billNo: '00123460',
        paymentDate: 'May 19, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'April 2024',
        amountDue: 110.00,
        billNo: '00123459',
        paymentDate: 'April 18, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'March 2024',
        amountDue: 150.75,
        billNo: '00123458',
        paymentDate: 'March 20, 2024',
        status: 'Overdue',
      ),
      BillingInformation(
        billMonth: 'February 2024',
        amountDue: 95.20,
        billNo: '00123457',
        paymentDate: 'February 16, 2024',
        status: 'Paid',
      ),
      BillingInformation(
        billMonth: 'January 2024',
        amountDue: 120.50,
        billNo: '00123456',
        paymentDate: 'January 15, 2024',
        status: 'Paid',
      ),
    ];
  }
}