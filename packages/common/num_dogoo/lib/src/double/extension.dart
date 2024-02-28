import 'package:num_dogoo/src/double/functions/functions.dart';

extension DoubleDogooExtension on double {
  /// [floorwToFixedDouble] 함수를 이용한 extension
  double toFixedDouble(int digits) {
    return floorToFixedDouble(value: this, digits: digits);
  }
}
