import 'package:map_dogoo/map_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 MapDogoo/Map - Function Test', () {
    test('👉 전달하는 값이 null이 아니면 Map에 추가한다', () {
      Map<String, dynamic> myMap = {
        'key1': 1,
      };
      mapSetIfPresent(map: myMap, key: 'key2');

      expect(myMap, {'key1': 1});

      mapSetIfPresent(map: myMap, key: 'key2', value: 2);

      expect(myMap, {'key1': 1, 'key2': 2});

      mapSetIfPresent(map: myMap, key: 'key3', value: null, defaultValue: 3);

      expect(myMap, {'key1': 1, 'key2': 2, 'key3': 3});
    });

    test('👉 전달하는 키에 대한 값이 null이 아니면 반환한다', () {
      Map<String, dynamic> myMap = {
        'key1': 1,
      };
      expect(mapGetIfPresent(myMap, 'key1'), 1);
      expect(mapGetIfPresent(myMap, 'key2'), null);
      expect(mapGetIfPresent(myMap, 'key2', defaultValue: 2), 2);
    });
  });

  group('📌 MapDogoo/Map - Extension Test', () {
    test('👉 전달하는 값이 null이 아니면 Map에 추가한다', () {});
    test('👉 전달하는 키에 대한 값이 null이 아니면 반환한다', () {});
  });

  group('📌 MapDogoo/Json - Function Test', () {
    test('👉 전달하는 값이 null이 아니면 Json에 추가한다', () {});
    test('👉 전달하는 키에 대한 값이 null이 아니면 반환한다', () {});
    test('👉 JSON을 보기 편한 문자열로 전달한다', () {});
  });

  group('📌 MapDogoo/Json - Extension Test', () {
    test('👉 전달하는 값이 null이 아니면 Json에 추가한다', () {});
    test('👉 전달하는 키에 대한 값이 null이 아니면 반환한다', () {});
    test('👉 JSON을 보기 편한 문자열로 전달한다', () {});
  });
}
