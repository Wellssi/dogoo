import 'package:num_dogoo/src/num/functions/functions.dart';

extension NumDogooExtension on num {
  /// [numToBool] 함수를 이용한 extension
  bool toBool() {
    return numToBool(this);
  }
}
