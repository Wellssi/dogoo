import 'package:num_dogoo/src/double/functions/functions.dart';

extension DoubleDogooExtension on double {
  /// 소수점의 자리수 만큼 버림을 진행하는 함수
  ///
  /// ex)
  /// ```
  ///   double myPI = 3.1415926535;
  ///   double fixedMyPI1 = myPI.toFixed(1); // 3.1
  ///   double fixedMyPI2 = myPI.toFixed(2); // 3.14
  /// ```
  double toFixedDouble(int digits) {
    return doubleToFixedDouble(val: this, digits: digits);
  }
}
