import 'package:datetime_dogoo/datetime_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 DateTimeDogoo - Function Test', () {
    final myDate = DateTime.now();

    String year = myDate.year.toString();
    String month = '${myDate.month < 10 ? '0${myDate.month}' : myDate.month}';
    String day = '${myDate.day < 10 ? '0${myDate.day}' : myDate.day}';

    String hour = '${myDate.hour < 10 ? '0${myDate.hour}' : myDate.hour}';
    String minute = '${myDate.minute < 10 ? '0${myDate.minute}' : myDate.minute}';
    String second = '${myDate.second < 10 ? '0${myDate.second}' : myDate.second}';

    test('👉 dateTimeToStringAsFormated - 날짜를 yyyymmdd & yyyymmdd hhmmss 형식에 맞춰서 반환', () {
      expect(dateTimeToStringAsFormated(myDate, format: DateTimeStringFormat.YYYYMMDD), '$year/$month/$day');
      expect(dateTimeToStringAsFormated(myDate, format: DateTimeStringFormat.YYYYMMDD_hhmmss), '$year/$month/$day $hour:$minute:$second');
    });
  });

  group('📌 DateTimeDogoo - Extension Test', () {
    final myDate = DateTime.now();

    String year = myDate.year.toString();
    String month = '${myDate.month < 10 ? '0${myDate.month}' : myDate.month}';
    String day = '${myDate.day < 10 ? '0${myDate.day}' : myDate.day}';

    String hour = '${myDate.hour < 10 ? '0${myDate.hour}' : myDate.hour}';
    String minute = '${myDate.minute < 10 ? '0${myDate.minute}' : myDate.minute}';
    String second = '${myDate.second < 10 ? '0${myDate.second}' : myDate.second}';

    test('👉 toStringAsFormated - 날짜를 yyyymmdd & yyyymmdd hhmmss 형식에 맞춰서 반환', () {
      expect(myDate.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD), '$year/$month/$day');
      expect(myDate.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD_hhmmss), '$year/$month/$day $hour:$minute:$second');
    });
  });
}
