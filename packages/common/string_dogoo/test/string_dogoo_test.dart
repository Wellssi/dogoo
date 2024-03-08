import 'package:string_dogoo/src/const.dart';
import 'package:string_dogoo/string_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 StringDogoo - Function test', () {
    test('👉 stringToBool - 문자열을 Boolean 값으로 변경해 반환', () {
      expect(stringToBool(trueString), isTrue);
      expect(stringToBool(falseString), isFalse);
      expect(stringToBool("TRUE"), isTrue);
      expect(stringToBool("FALSE"), isFalse);
      expect(stringToBool("trUE"), isTrue);
      expect(stringToBool("faLSE"), isFalse);
    });
  });

  group('📌 StringDogoo - Extension test', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('👉 toBool - 문자열을 Boolean 값으로 변경해 반환', () {
      expect(trueString.toBool(), isTrue);
      expect(falseString.toBool(), isFalse);
      expect("TRUE".toBool(), isTrue);
      expect("FALSE".toBool(), isFalse);
      expect("trUE".toBool(), isTrue);
      expect("faLSE".toBool(), isFalse);
    });
  });
}
