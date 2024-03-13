import 'package:string_dogoo/string_dogoo.dart';

void main() {
  print("${stringToBool("true")}, ${stringToBool("true").runtimeType}"); // true, bool
  print("${stringToBool("True")}, ${stringToBool("True").runtimeType}"); // true, bool
  print("${stringToBool("truE")}, ${stringToBool("truE").runtimeType}"); // true, bool

  print("${stringToBool("false")}, ${stringToBool("false").runtimeType}"); // false, bool
  print("${stringToBool("False")}, ${stringToBool("False").runtimeType}"); // false, bool
  print("${stringToBool("falsE")}, ${stringToBool("falsE").runtimeType}"); // false, bool

  print(stringToBool("abcdef")); // null
  print(stringToBool("")); // null

  print(stringToTitleCase("apple")); // Apple
  print(stringToTitleCase("banana")); // Banana

  // * -------------------- *

  print("${"true".toBool()}, ${"true".toBool().runtimeType}"); // true, bool
  print("${"True".toBool()}, ${"True".toBool().runtimeType}"); // true, bool
  print("${"truE".toBool()}, ${"truE".toBool().runtimeType}"); // true, bool

  print("${"false".toBool()}, ${"false".toBool().runtimeType}"); // false, bool
  print("${"False".toBool()}, ${"False".toBool().runtimeType}"); // false, bool
  print("${"falsE".toBool()}, ${"falsE".toBool().runtimeType}"); // false, bool

  print("abcdef".toBool()); // null
  print("".toBool()); // null

  print("apple".toTitleCase()); // Apple
  print("banana".toTitleCase()); // Banana
}
