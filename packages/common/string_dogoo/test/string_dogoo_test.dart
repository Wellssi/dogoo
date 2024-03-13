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

    test('👉 stringStartsWithUpperCase - 문자열의 첫글자를 대문자, 나머지를 소문자로 변경해 반환', () {
      const apple = "apple";
      const aPPLE = "aPPLE";
      expect(stringStartsWithUpperCase(apple), "Apple");
      expect(stringStartsWithUpperCase(aPPLE), "Apple");
    });
  });

  group('📌 StringDogoo - Extension test', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('👉 toBool - 문자열을 Boolean 값으로 변경해 반환', () {
      expect(trueString.toBool(), isTrue);
    });

    test('👉 startsWithUpperCase - 문자열의 첫글자를 대문자, 나머지를 소문자로 변경해 반환', () {
      const apple = "apple";
      const aPPLE = "aPPLE";
      expect(apple.startsWithUpperCase(), "Apple");
      expect(aPPLE.startsWithUpperCase(), "Apple");
    });
  });
}
