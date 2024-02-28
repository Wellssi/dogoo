import 'package:num_dogoo/num_dogoo.dart';
import 'package:test/test.dart';

void main() {
  group('📌 NumDogoo/Num - Function Test', () {
    const double myDouble0 = 0.0;
    const double myDouble10 = 10.0;

    const int myInt0 = 0;
    const int myInt10 = 10;

    test('👉 num 타입 값을 boolean 값으로 반환', () {
      expect(numToBool(myDouble0), isFalse);
      expect(numToBool(myDouble10), isTrue);
      expect(numToBool(myInt0), isFalse);
      expect(numToBool(myInt10), isTrue);
    });
  });

  group('📌 NumDogoo/Num - Extension Test', () {
    const double myDouble0 = 0.0;
    const double myDouble10 = 10.0;

    const int myInt0 = 0;
    const int myInt10 = 10;

    test('👉 num 타입 값을 boolean 값으로 반환', () {
      expect(myDouble0.toBool(), isFalse);
      expect(myDouble10.toBool(), isTrue);
      expect(myInt0.toBool(), isFalse);
      expect(myInt10.toBool(), isTrue);
    });
  });

  group('📌 NumDogoo/Double - Function Test', () {
    const double myDouble1 = 0.0;
    const double myDouble2 = 10.0;
    const double myDouble3 = 3.1415926535;

    test('👉 double 타입 값의 소수점을 잘라낸다.', () {
      expect(floorToFixedDouble(value: myDouble1, digits: 3), 0.000);
      expect(floorToFixedDouble(value: myDouble2, digits: 3), 10.000);
      expect(floorToFixedDouble(value: myDouble3, digits: 3), 3.141);
    });
  });

  group('📌 NumDogoo/Double - Extension Test', () {
    const double myDouble1 = 0.0;
    const double myDouble2 = 10.0;
    const double myDouble3 = 3.1415926535;

    test('👉 double 타입 값의 소수점을 잘라낸다.', () {
      expect(myDouble1.toFixedDouble(3), 0.000);
      expect(myDouble2.toFixedDouble(3), 10.000);
      expect(myDouble3.toFixedDouble(3), 3.141);
    });
  });

  group('📌 NumDogoo/Int - Function Test', () {
    const int myInt0 = 0;
    const int myInt10 = 10;

    test('👉 int 값을 빈자리 만큼 채워 문자열로 반환 / 기본 2자리', () {
      expect(intToStringAsDigits(myInt0), '00');
      expect(intToStringAsDigits(myInt10), '10');
    });

    test('👉 int 값을 빈자리 만큼 채워 문자열로 반환 / 4자리', () {
      expect(intToStringAsDigits(myInt0, digits: 4), '0000');
      expect(intToStringAsDigits(myInt10, digits: 4), '0010');
    });
  });

  group('📌 NumDogoo/Int - Extension Test', () {
    const int myInt0 = 0;
    const int myInt10 = 10;

    test('👉 int 값을 빈자리 만큼 채워 문자열로 반환 / 기본 2자리', () {
      expect(myInt0.toStringAsDigits(), '00');
      expect(myInt10.toStringAsDigits(), '10');
    });

    test('👉 int 값을 빈자리 만큼 채워 문자열로 반환 / 4자리', () {
      expect(myInt0.toStringAsDigits(digits: 4), '0000');
      expect(myInt10.toStringAsDigits(digits: 4), '0010');
    });
  });
}
