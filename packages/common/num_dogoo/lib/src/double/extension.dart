import 'functions/functions.dart';

/// Double Extension
///
/// - [double] 값을 특정 소수점자리까지 잘라내는 함수
extension DoubleDogooExtension on double {
  /// [floorToFixedDouble] 함수를 이용한 extension
  double toFixedDouble(int digits) {
    return floorToFixedDouble(value: this, digits: digits);
  }
}
