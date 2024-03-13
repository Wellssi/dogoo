import 'package:string_dogoo/src/functions/functions.dart';

extension StringDogooExtension on String {
  /// Converts to a [bool] and returns the nullable boolean value.
  /// If the value is one of boolean string, then return boolean value.
  /// If the value is not one of boolean string, then return null.
  /// Extension of [stringToBool] function.
  bool? toBool() {
    return stringToBool(this);
  }

  /// Returns the foramtted [String] value like `Xxxx...` .
  /// Extension of [stringStartsWithUpperCase] function.
  String startsWithUpperCase() {
    return stringStartsWithUpperCase(this);
  }
}
