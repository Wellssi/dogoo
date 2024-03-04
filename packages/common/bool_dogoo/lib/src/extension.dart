import 'bool_to_num.dart';

/// Bool Extension
///
/// [bool] 값을 [num], [int], [double] 타입 값으로 변경하는 확장
extension BoolDogooExtension on bool {
  /// boolean 값을 0.0 또는 1.0로 반환합니다.
  num toNum() {
    return boolToNum(this);
  }

  /// boolean 값을 0 또는 1로 반환합니다.
  int toInt() {
    return boolToNum(this).toInt();
  }

  /// boolean 값을 0.0 또는 1.0로 반환합니다.
  double toDouble() {
    return boolToNum(this).toDouble();
  }
}
