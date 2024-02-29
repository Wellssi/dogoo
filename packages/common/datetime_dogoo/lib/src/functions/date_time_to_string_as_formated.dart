import 'package:datetime_dogoo/src/enums.dart';
import 'package:num_dogoo/num_dogoo.dart';

String dateTimeToStringAsFormated(
  DateTime time, {
  DateTimeStringFormat format = DateTimeStringFormat.YYYYMMDD_hhmmss,
  String dateSeparator = '/',
  String timeSeparator = ':',
}) {
  String year = time.year.toString();
  String month = time.month.toStringAsDigits();
  String day = time.day.toStringAsDigits();

  String hour = time.hour.toStringAsDigits();
  String minute = time.minute.toStringAsDigits();
  String second = time.second.toStringAsDigits();

  switch (format) {
    case DateTimeStringFormat.YYYY:
      return year;
    case DateTimeStringFormat.MM:
      return month;
    case DateTimeStringFormat.DD:
      return day;
    case DateTimeStringFormat.hh:
      return hour;
    case DateTimeStringFormat.mm:
      return minute;
    case DateTimeStringFormat.ss:
      return second;

    case DateTimeStringFormat.YYYYMM:
      return '$year$dateSeparator$month';
    case DateTimeStringFormat.MMDD:
      return '$month$dateSeparator$day';
    case DateTimeStringFormat.YYYYMMDD:
      return '$year$dateSeparator$month$dateSeparator$day';
    case DateTimeStringFormat.MMDDYYYY:
      return '$month$dateSeparator$day$dateSeparator$year';
    case DateTimeStringFormat.DDMMYYYY:
      return '$day$dateSeparator$month$dateSeparator$year';

    case DateTimeStringFormat.hhmm:
      return '$hour$timeSeparator$minute';
    case DateTimeStringFormat.mmss:
      return '$minute$timeSeparator$second';
    case DateTimeStringFormat.hhmmss:
      return '$hour$timeSeparator$minute$timeSeparator$second';

    case DateTimeStringFormat.YYYYMMDD_hh:
      return '$year$dateSeparator$month$dateSeparator$day $hour';
    case DateTimeStringFormat.YYYYMMDD_hhmm:
      return '$year$dateSeparator$month$dateSeparator$day $hour$timeSeparator$minute';
    case DateTimeStringFormat.YYYYMMDD_hhmmss:
      return '$year$dateSeparator$month$dateSeparator$day $hour$timeSeparator$minute$timeSeparator$second';

    case DateTimeStringFormat.MMDDYYYY_hh:
      return '$month$dateSeparator$day$dateSeparator$year $hour';
    case DateTimeStringFormat.MMDDYYYY_hhmm:
      return '$month$dateSeparator$day$dateSeparator$year $hour$timeSeparator$minute';
    case DateTimeStringFormat.MMDDYYYY_hhmmss:
      return '$month$dateSeparator$day$dateSeparator$year $hour$timeSeparator$minute$timeSeparator$second';

    case DateTimeStringFormat.DDMMYYYY_hh:
      return '$day$dateSeparator$month$dateSeparator$year $hour';
    case DateTimeStringFormat.DDMMYYYY_hhmm:
      return '$day$dateSeparator$month$dateSeparator$year $hour$timeSeparator$minute';
    case DateTimeStringFormat.DDMMYYYY_hhmmss:
      return '$day$dateSeparator$month$dateSeparator$year $hour$timeSeparator$minute$timeSeparator$second';
  }
}
