import 'package:map_dogoo/src/functions/functions.dart';

extension MapDogooExtension on Map {
  /// [mapSetIfPresent] 함수를 이용해 값을 추가.
  setIfPresent(dynamic key, {dynamic value, dynamic defaultValue}) {
    return mapSetIfPresent(map: this, key: key, value: value, defaultValue: defaultValue);
  }

  /// [mapGetIfPresent] 함수를 이용해 값 반환.
  getIfPresent(dynamic key, {dynamic defaultValue}) {
    return mapGetIfPresent(this, key, defaultValue: defaultValue);
  }

  /// [mapToPrettyJsonString] 함수를 이용해 보기 좋은 JSON String 반환.
  toPrettyJsonString({int? indentSize}) {
    return indentSize == null ? mapToPrettyJsonString(this) : mapToPrettyJsonString(this, indentSize: indentSize);
  }
}
