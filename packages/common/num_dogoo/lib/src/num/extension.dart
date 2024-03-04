import 'functions/functions.dart';

/// Num Extension
///
/// - [num] 값을 [bool]로 반환
extension NumDogooExtension on num {
  /// [numToBool] 함수를 이용한 extension
  bool toBool() {
    return numToBool(this);
  }
}
