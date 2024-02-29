import 'package:datetime_dogoo/datetime_dogoo.dart';

extension DatetimeDogooExtension on DateTime {
  /// [dateTimeToStringAsFormated] 함수를 이용하는 extension
  String toStringAsFormated({
    DateTimeStringFormat format = DateTimeStringFormat.YYYYMMDD_hhmmss,
    String dateSeparator = '/',
    String timeSeparator = ':',
  }) {
    return dateTimeToStringAsFormated(
      this,
      format: format,
      dateSeparator: dateSeparator,
      timeSeparator: timeSeparator,
    );
  }
}
