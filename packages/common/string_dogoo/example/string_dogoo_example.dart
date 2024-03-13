import 'package:string_dogoo/string_dogoo.dart';

void main() {
  print("${"true".toBool()}, ${"true".toBool().runtimeType}"); // true, bool
  print("${"True".toBool()}, ${"True".toBool().runtimeType}"); // true, bool
  print("${"tRue".toBool()}, ${"tRue".toBool().runtimeType}"); // true, bool
  print("${"trUe".toBool()}, ${"trUe".toBool().runtimeType}"); // true, bool
  print("${"truE".toBool()}, ${"truE".toBool().runtimeType}"); // true, bool

  print("${"false".toBool()}, ${"false".toBool().runtimeType}"); // false, bool
  print("${"False".toBool()}, ${"False".toBool().runtimeType}"); // false, bool
  print("${"fAlse".toBool()}, ${"fAlse".toBool().runtimeType}"); // false, bool
  print("${"faLse".toBool()}, ${"faLse".toBool().runtimeType}"); // false, bool
  print("${"falSe".toBool()}, ${"falSe".toBool().runtimeType}"); // false, bool
  print("${"falsE".toBool()}, ${"falsE".toBool().runtimeType}"); // false, bool

  print("a".toBool()); // null
  print("b".toBool()); // null
  print("".toBool()); // null

  print("apple".startsWithUpperCase()); // Apple
  print("banana".startsWithUpperCase()); // Banana
}
