import 'package:bool_dogoo/bool_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 Extension Test', () {
    bool myboolT = true;
    bool myboolF = false;

    test('👉 bool to int', () {
      expect(myboolF.toInt() == 0, isTrue);
      expect(myboolT.toInt() == 1, isTrue);
    });

    test('👉 bool to double', () {
      expect(myboolF.toDouble() == 0.0, isTrue);
      expect(myboolT.toDouble() == 1.0, isTrue);
    });

    test('👉 bool to num', () {
      expect(myboolF.toNum() == 0.0, isTrue);
      expect(myboolT.toNum() == 1, isTrue);
    });
  });
}
