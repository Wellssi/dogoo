This is part of the [dogoo](https://github.com/Wellssi/dogoo) package that provides `Dart` and `Flutter` utilities.

Map Dogoo provides utility functions and extension for [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html).

## Features

- Set value with default value.
- Get value with default value.
- Make pretty json string.

## Usage

```dart
import 'package:map_dogoo/map_dogoo.dart';

void main() {
  Map<String, dynamic> myMap = {
    'key1': 1,
  };
  mapSetIfPresent(map: myMap, key: 'key2'); // myMap : { "key1": 1}
  mapSetIfPresent(map: myMap, key: 'key2', value: 2); // myMap : { "key1": 1, "key2": 2}
  mapSetIfPresent(map: myMap, key: 'key3', value: null, defaultValue: 3); // myMap : { "key1": 1, "key2": 2, "key3": 3}

  mapGetIfPresent(myMap, 'key1'); // 1
  mapGetIfPresent(myMap, 'key2'); // 2
  mapGetIfPresent(myMap, 'key5', defaultValue: 5); // 5

  mapToPrettyJsonString(myMap); // {\n  "key1": 1,\n  "key2": 2,\n  "key3": 3}

  myMap = {'key1': 1};

  myMap.setIfPresent('key2'); // myMap : { "key1": 1}
  myMap.setIfPresent('key2', value: 2); // myMap : { "key1": 1, "key2": 2}
  myMap.setIfPresent('key3', value: null, defaultValue: 3); // myMap : { "key1": 1, "key2": 2, "key3": 3}

  myMap.getIfPresent('key1'); // 1
  myMap.getIfPresent('key2'); // 2
  myMap.getIfPresent('key5', defaultValue: 5); // 5

  myMap.toPrettyJsonString(); // {\n  "key1": 1,\n  "key2": 2,\n  "key3": 3}
}
```
