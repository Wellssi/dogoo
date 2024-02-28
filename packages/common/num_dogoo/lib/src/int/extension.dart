import 'package:num_dogoo/src/int/functions/functions.dart';

extension IntDogooExtension on int {
  /// [intToStringAsDigits] 함수를 이용한 extension
  String toStringAsDigits({int? digits}) {
    return digits != null ? intToStringAsDigits(this, digits: digits) : intToStringAsDigits(this);
  }
}
