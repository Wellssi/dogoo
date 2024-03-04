// ignore_for_file: lines_longer_than_80_chars

import 'package:datetime_dogoo/datetime_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 DateTimeDogoo - Function Test', () {
    final DateTime myDate = DateTime.now();

    final String year = myDate.year.toString();
    final String month = '${myDate.month < 10 ? '0${myDate.month}' : myDate.month}';
    final String day = '${myDate.day < 10 ? '0${myDate.day}' : myDate.day}';

    final String hour = '${myDate.hour < 10 ? '0${myDate.hour}' : myDate.hour}';
    final String minute = '${myDate.minute < 10 ? '0${myDate.minute}' : myDate.minute}';
    final String second = '${myDate.second < 10 ? '0${myDate.second}' : myDate.second}';

    test('👉 dateTimeToStringAsFormated - 날짜를 yyyymmdd & yyyymmdd hhmmss 형식에 맞춰서 반환', () {
      expect(dateTimeToStringAsFormated(myDate, format: DateTimeStringFormat.YYYYMMDD), '$year/$month/$day');
      expect(dateTimeToStringAsFormated(myDate, format: DateTimeStringFormat.YYYYMMDD_hhmmss), '$year/$month/$day $hour:$minute:$second');
    });
  });

  group('📌 DateTimeDogoo - Extension Test', () {
    final DateTime myDate = DateTime.now();

    final String year = myDate.year.toString();
    final String month = '${myDate.month < 10 ? '0${myDate.month}' : myDate.month}';
    final String day = '${myDate.day < 10 ? '0${myDate.day}' : myDate.day}';

    final String hour = '${myDate.hour < 10 ? '0${myDate.hour}' : myDate.hour}';
    final String minute = '${myDate.minute < 10 ? '0${myDate.minute}' : myDate.minute}';
    final String second = '${myDate.second < 10 ? '0${myDate.second}' : myDate.second}';

    test('👉 toStringAsFormated - 날짜를 yyyymmdd & yyyymmdd hhmmss 형식에 맞춰서 반환', () {
      expect(myDate.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD), '$year/$month/$day');
      expect(myDate.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD_hhmmss), '$year/$month/$day $hour:$minute:$second');
    });
  });
}
