import 'package:string_dogoo/src/const/const.dart';

/// Returns the nullable boolean value.
/// If the value is one of boolean string([trueString], [falseString]), then return boolean value.
/// If the value is not one of boolean string([trueString], [falseString]), then return null.
bool? stringToBool(String str) {
  String newStr = str.toLowerCase();

  if (newStr == trueString) return true;
  if (newStr == falseString) return false;

  return null;
}
