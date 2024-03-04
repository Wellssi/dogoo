// ignore_for_file: lines_longer_than_80_chars

import 'package:num_dogoo/num_dogoo.dart';

import '../enums.dart';

/// [DateTime]을 형식 문자열로 만들어 반환
String dateTimeToStringAsFormated(
  DateTime time, {
  DateTimeStringFormat format = DateTimeStringFormat.YYYYMMDD_hhmmss,
  String dateSeparator = '/',
  String timeSeparator = ':',
}) {
  final String year = time.year.toString();
  final String month = time.month.toStringAsDigits();
  final String day = time.day.toStringAsDigits();

  final String hour = time.hour.toStringAsDigits();
  final String minute = time.minute.toStringAsDigits();
  final String second = time.second.toStringAsDigits();

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
