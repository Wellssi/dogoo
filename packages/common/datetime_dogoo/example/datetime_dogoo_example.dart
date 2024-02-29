import 'package:datetime_dogoo/datetime_dogoo.dart';

void main() {
  final today = DateTime.now();

  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD)); // 2024/02/29
  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD_hhmmss)); // 2024/02/29 15:53:18
  print(today.toStringAsFormated(format: DateTimeStringFormat.MMDDYYYY)); // 02/29/2024

  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD, dateSeparator: '-', timeSeparator: '::')); // 2024-02-29
  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD_hhmmss, dateSeparator: '-', timeSeparator: '::')); // 2024-02-29 15::53::18
  print(today.toStringAsFormated(format: DateTimeStringFormat.MMDDYYYY, dateSeparator: '-', timeSeparator: '::')); // 02-29-2024

  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD, dateSeparator: '.')); // 2024.02.29
  print(today.toStringAsFormated(format: DateTimeStringFormat.YYYYMMDD_hhmmss, dateSeparator: '.')); // 2024.02.29 15:53:18
  print(today.toStringAsFormated(format: DateTimeStringFormat.MMDDYYYY, dateSeparator: '.')); // 02.29.2024
}
