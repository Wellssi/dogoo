This package is one of packages named [dogoo](https://github.com/Wellssi/dogoo) which is set of `Dart` & `Flutter` utility package set.

DateTime Dogoo is the package of utility functions and extension for [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html).

## Features

- Make formatted date time string.

## Usage

```dart
import 'package:datetime_dogoo/datetime_dogoo.dart';

void main() {
  final DateTime today = DateTime.now();

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
```
