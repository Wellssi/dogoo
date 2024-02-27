import 'package:bool_dogoo/bool_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 Function test', () {
    const bool myBoolF = false;
    const bool myBoolT = true;

    test('👉 불리언 값을 num 타입으로 반환', () {
      expect(boolToNum(myBoolF) == falseNum, isTrue);
      expect(boolToNum(myBoolT) == trueNum, isTrue);
    });
  });

  group('📌 Extension Test', () {
    const bool myBoolF = false;
    const bool myBoolT = true;

    test('👉 불리언 값을 int 타입으로 반환', () {
      expect(myBoolF.toInt() == falseNum.toInt(), isTrue);
      expect(myBoolT.toInt() == trueNum.toInt(), isTrue);
    });

    test('👉 불리언 값을 double 타입으로 반환', () {
      expect(myBoolF.toDouble() == falseNum, isTrue);
      expect(myBoolT.toDouble() == trueNum, isTrue);
    });

    test('👉 불리언 값을 num 타입으로 반환', () {
      expect(myBoolF.toNum() == falseNum, isTrue);
      expect(myBoolT.toNum() == trueNum, isTrue);
    });
  });
}
