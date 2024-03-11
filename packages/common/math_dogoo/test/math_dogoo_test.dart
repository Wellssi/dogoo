import 'dart:math' as math;

import 'package:math_dogoo/math_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 MathDogoo - Function Test', () {
    test('👉 x의 절대값 반환', () {
      expect(absolute(-2.0), 2.0);
      expect(absolute(2.0), 2.0);
    });

    test('👉 x의 절대값 반환 - NaN 반환', () {
      expect(absolute(-double.nan), isNaN);
      expect(absolute(double.nan), isNaN);
    });

    test('👉 x의 밑이 10인 로그 값 반환', () {
      expect(log10(1.0), 0.0);
      expect(absolute(0.301029995663981 - log10(2)) < epsilon, isTrue);
    });

    test('👉 x의 밑이 10인 로그 값 반환 - NaN 반환', () {
      expect(log10(double.nan), isNaN);
      expect(log10(-double.nan), isNaN);
    });

    test('👉 x의 특정 소수점 자리에서 반올림한 값 반환', () {
      expect(roundAt(0.123456789, fractionDigits: 1), 0.1);
      expect(roundAt(0.123456789, fractionDigits: 2), 0.12);
      expect(roundAt(0.123456789), 0.12345679);
      expect(roundAt(1.0123456789e+5), 1.012345679e+5);
    });

    test('👉 x의 소수점 마지막 자리에서 반올림한 값 반환 - NaN 반환', () {
      expect(roundAt(-double.nan, fractionDigits: 1), isNaN);
      expect(roundAt(double.nan, fractionDigits: 1), isNaN);
      expect(roundAt(double.nan), isNaN);
      expect(roundAt(-double.nan), isNaN);
    });

    test('👉 x의 y 제곱근을 반환', () {
      expect(math.sqrt2 - root(2, 2) < epsilon, isTrue);
      expect(math.sqrt(3) - root(3, 2) < epsilon, isTrue);
      expect(absolute(root(3, 3) - 1.442249570307408) < epsilon, isTrue);
      expect(root(-8, 3), -2.0);
    });

    test('👉 x의 y 제곱근을 반환 - NaN 반환', () {
      expect(root(-2, 2), isNaN);
      expect(root(-3, 2), isNaN);
    });
  });
}
