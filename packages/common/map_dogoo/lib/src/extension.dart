import 'functions/functions.dart';

/// Map Extension
///
/// - 기본 값을 이용한 값 지정
/// - 기본 값을 이용한 읽기 확장
/// - Pretty Json String 반환
///
extension MapDogooExtension<K, V> on Map<K, V> {
  /// [mapSetIfPresent] 함수를 이용해 값을 추가.
  Map<K, V> setIfPresent(K key, {V? value, V? defaultValue}) {
    return mapSetIfPresent(
      map: this,
      key: key,
      value: value,
      defaultValue: defaultValue,
    );
  }

  /// [mapGetIfPresent] 함수를 이용해 값 반환.
  V? getIfPresent(K key, {V? defaultValue}) {
    return mapGetIfPresent(
      this,
      key,
      defaultValue: defaultValue,
    );
  }

  /// [mapToPrettyJsonString] 함수를 이용해 보기 좋은 JSON String 반환.
  String toPrettyJsonString({int? indentSize}) {
    return indentSize == null
        ? mapToPrettyJsonString(this)
        : mapToPrettyJsonString(
            this,
            indentSize: indentSize,
          );
  }
}
