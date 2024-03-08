This is part of the [dogoo](https://github.com/Wellssi/dogoo) package that provides `Dart` and `Flutter` utilities.

Bool Dogoo provides utility functions and extension for [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) type.

## Features

- Make boolean value to num value.

## Usage

```dart
import 'package:bool_dogoo/bool_dogoo.dart';

void main() {
  const bool myBoolT = true;
  const bool myBoolF = false;

  print(myBoolT.toInt()); // 1
  print(myBoolF.toDouble()); // 0.0
}
```
