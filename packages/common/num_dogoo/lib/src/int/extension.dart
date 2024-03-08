import 'functions/functions.dart';

/// Int Extension of Dogoo
///
/// - [int] 값을 n자리수 문자열로 변경할 때 0으로 채워서 반환
extension IntDogooExtension on int {
  /// [intToStringAsDigits] 함수를 이용한 extension
  String toStringAsDigits({int? digits}) {
    if (digits != null) {
      return intToStringAsDigits(this, digits: digits);
    }

    return intToStringAsDigits(this);
  }
}
