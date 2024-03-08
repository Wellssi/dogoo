import '../datetime_dogoo.dart';

/// DateTime Extension
///
/// 날짜를 형식 문자열로 변경하는 확장
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
