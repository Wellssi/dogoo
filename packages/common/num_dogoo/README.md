This is part of the [dogoo](https://github.com/Wellssi/dogoo) package that provides `Dart` and `Flutter` utilities.

Num Dogoo provides utility functions and extension for [num](https://api.flutter.dev/flutter/dart-core/num-class.html).

## Features

- Make int value to number string filled with 0.
- Make num value to boolean.
- Cut to the `n`th digit below the decimal point.

## Usage

```dart
import 'dart:math' as math;

import 'package:num_dogoo/num_dogoo.dart';

void main() {
  final double myPI1 = math.pi.toFixedDouble(1);
  final double myPI2 = math.pi.toFixedDouble(3);

  print(math.pi); // 3.141592653589793
  print('$myPI1, runtimeType: ${myPI1.runtimeType}'); // 3.1, runtimeType: double
  print('$myPI2, runtimeType: ${myPI2.runtimeType}'); // 3.141, runtimeType: double

  const double myDouble = -1.23456;
  print(myDouble.toBool()); // true

  const int myInt = 3;
  print(myInt.toBool()); // true
  print(myInt.toStringAsDigits()); // 03
  print(myInt.toStringAsDigits(digits: 4)); // 0003
}
```
