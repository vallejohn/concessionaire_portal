import 'package:mwd_concessionaire_portal/core/exceptions/failure.dart';

extension FailureExtension on Failure{
  String decodeError(){
    return when(
      exception: (exception) => exception.value as String,
      hiveCollectionException: (hiveError) => hiveError.message,
    );
  }
}

extension DateFormatExtension on String {
  String toMonthDayYear() {
    try {
      DateTime date = DateTime.parse(this);
      return '${_monthName(date.month)} ${date.day}, ${date.year}';
    } catch (e) {
      return 'Invalid Date';
    }
  }

  String _monthName(int month) {
    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return months[month - 1];
  }

  String toMonthYear() {
    final date = DateTime.tryParse(this);
    if (date == null) return this; // Fallback if the string isn't a valid date

    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    final monthName = months[date.month - 1];
    return '$monthName ${date.year}';
  }
}