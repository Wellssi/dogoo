import 'package:string_dogoo/src/functions/functions.dart';

extension StringDogooExtension on String {
  /// [stringToBool] 함수를 이용한 extension
  bool? toBool() {
    return stringToBool(this);
  }

  /// Returns the foramtted [String] value like `Xxxx...` .
  /// Extension of [stringStartsWithUpperCase] function.
  String startsWithUpperCase() {
    return stringStartsWithUpperCase(this);
  }
}
