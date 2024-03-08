import 'package:string_dogoo/src/const.dart';

/// String 값을 boolean으로 변환해 반환하는 함수.
bool? stringToBool(String str) {
  String newStr = str.toLowerCase();

  if (newStr == trueString) return true;
  if (newStr == falseString) return false;

  return null;
}
