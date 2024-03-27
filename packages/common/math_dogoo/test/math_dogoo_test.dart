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

    test('👉 x의 acosh 값을 반환', () {
      expect(acosh(1.0), 0.0);
      expect(absolute(acosh(2) - 1.3169578969248166) < epsilon, isTrue);
    });

    test('👉 x의 acosh 값을 반환 - NaN 반환', () {
      expect(acosh(0), isNaN);
      expect(acosh(-1), isNaN);
    });

    test('👉 x의 asinh 값을 반환', () {
      expect(asinh(0.0), 0.0);
      expect(absolute(asinh(2) - 1.4436354751788103) < epsilon, isTrue);
    });

    test('👉 x의 atanh 값을 반환', () {
      expect(atanh(0.0), 0.0);
      expect(absolute(atanh(0.5) - 0.5493061443340549) < epsilon, isTrue);
    });

    test('👉 x의 atanh 값을 반환 - infinity 반환', () {
      expect(atanh(1), double.infinity);
      expect(atanh(-1), double.infinity);
    });

    test('👉 x * 10^(y) 반환', () {
      expect(ee(1, 2), 100.0);
    });

    test('👉 x! 반환', () {
      expect(factorial(5), 120);
    });

    test('👉 x! 반환 - NaN 반환', () {
      expect(factorial(-5), isNaN);
    });

    test('👉 x의 cosh 값을 반환', () {
      expect(cosh(0.0), 1.0);
      expect(absolute(cosh(1) - 1.5430806348152437) < epsilon, isTrue);
    });

    test('👉 x의 sinh 값을 반환', () {
      expect(sinh(0.0), 0.0);
      expect(absolute(sinh(1) - 1.1752011936438014) < epsilon, isTrue);
    });

    test('👉 x의 tanh 값을 반환', () {
      expect(tanh(0.0), 0.0);
      expect(absolute(tanh(1) - 0.7615941559557649) < epsilon, isTrue);
    });

    test('👉 x의 밑이 2인 로그 값 반환', () {
      expect(log2(1.0), 0.0);
      expect(absolute(0.6931471805599453 - log2(2)) < epsilon, isTrue);
    });

    test('👉 x의 밑이 2인 로그 값 반환 - NaN 반환', () {
      expect(log2(double.nan), isNaN);
      expect(log2(-double.nan), isNaN);
    });

    test('👉 x의 밑이 10인 로그 값 반환', () {
      expect(log10(1.0), 0.0);
      expect(absolute(0.301029995663981 - log10(2)) < epsilon, isTrue);
    });

    test('👉 x의 밑이 10인 로그 값 반환 - NaN 반환', () {
      expect(log10(double.nan), isNaN);
      expect(log10(-double.nan), isNaN);
    });

    test('👉 x의 밑이 n인 로그 값 반환', () {
      expect(logN(1.0, 2), 0.0);
      expect(absolute(1.0 - logN(2, 2)) < epsilon, isTrue);
      expect(absolute(2.0 - logN(4, 2)) < epsilon, isTrue);
    });

    test('👉 x의 밑이 n인 로그 값 반환 - NaN 반환', () {
      expect(logN(double.nan, 2), isNaN);
      expect(logN(-double.nan, 2), isNaN);
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

  group('📌 MathDogoo - Extension Test', () {
    test('👉 x의 절대값 반환', () {
      expect((-2.0).absolute(), 2.0);
      expect(2.0.absolute(), 2.0);
    });

    test('👉 x의 절대값 반환 - NaN 반환', () {
      expect((-double.nan).absolute(), isNaN);
      expect(double.nan.absolute(), isNaN);
    });

    test('👉 x의 밑이 10인 로그 값 반환', () {
      expect(1.0.log10(), 0.0);
      expect(absolute(0.301029995663981 - 2.log10()) < epsilon, isTrue);
    });

    test('👉 x의 밑이 10인 로그 값 반환 - NaN 반환', () {
      expect(double.nan.log10(), isNaN);
      expect((-double.nan).log10(), isNaN);
    });

    test('👉 x의 특정 소수점 자리에서 반올림한 값 반환', () {
      expect(0.123456789.roundAt(fractionDigits: 1), 0.1);
      expect(0.123456789.roundAt(fractionDigits: 2), 0.12);
      expect(0.123456789.roundAt(), 0.12345679);
      expect(1.0123456789e+5.roundAt(), 1.012345679e+5);
    });

    test('👉 x의 소수점 마지막 자리에서 반올림한 값 반환 - NaN 반환', () {
      expect((-double.nan).roundAt(fractionDigits: 1), isNaN);
      expect(double.nan.roundAt(fractionDigits: 1), isNaN);
      expect(double.nan.roundAt(), isNaN);
      expect((-double.nan).roundAt(), isNaN);
    });

    test('👉 x의 y 제곱근을 반환', () {
      expect(math.sqrt2 - 2.root(2) < epsilon, isTrue);
      expect(math.sqrt(3) - 3.root(2) < epsilon, isTrue);
      expect(absolute(3.root(3) - 1.442249570307408) < epsilon, isTrue);
      expect((-8).root(3), -2.0);
    });

    test('👉 x의 y 제곱근을 반환 - NaN 반환', () {
      expect((-2).root(2), isNaN);
      expect((-3).root(2), isNaN);
    });
  });
}
