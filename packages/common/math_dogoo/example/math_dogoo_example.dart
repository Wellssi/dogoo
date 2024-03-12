import 'dart:math' as math;

import 'package:math_dogoo/math_dogoo.dart' as math_dogoo;

void main() {
  const double pi = math.pi;

  print(math_dogoo.absolute(2)); // 2.0
  print(math_dogoo.absolute(-2)); // 2.0

  print(math_dogoo.log10(2)); // 0.30102999566398114
  print(math_dogoo.log10(10)); // 1.0
  print(math_dogoo.log10(100)); // 2.0

  print(math_dogoo.roundAt(pi)); // 3.14159265358979
  print(math_dogoo.roundAt(pi, fractionDigits: 2)); // 3.14

  print(math_dogoo.root(2, 2)); // 1.414213562373095
  print(math_dogoo.root(-2, 2)); // NaN
  print(math_dogoo.root(2, 3)); // 1.259921049894873
  print(math_dogoo.root(-2, 3)); // -1.259921049894873
  print(math_dogoo.root(3, 2)); // 1.732050807568877
  print(math_dogoo.root(3, 3)); // 1.442249570307408
  print(math_dogoo.root(10000, 2)); // 100.0
  print(math_dogoo.root(1000, 3)); // 10.0
  print(math_dogoo.root(1024, 10)); // 2.0

  print(math_dogoo.root(3, 2.1)); // 1.687332211990613
  print(math_dogoo.root(-3, 2.1)); // NaN

  // * -------------------- *

  print(2.absolute()); // 2.0
  print((-2).absolute()); // 2.0

  print(2.log10()); // 0.30102999566398114
  print(10.log10()); // 1.0
  print(100.log10()); // 2.0

  print(pi.roundAt()); // 3.14159265358979
  print(pi.roundAt(fractionDigits: 2)); // 3.14

  print(2.root(2)); // 1.414213562373095
  print((-2).root(2)); // NaN
  print(2.root(3)); // 1.259921049894873
  print(-2.root(3)); // -1.259921049894873
  print(3.root(2)); // 1.732050807568877
  print(3.root(3)); // 1.442249570307408
  print(10000.root(2)); // 100.0
  print(1000.root(3)); // 10.0
  print(1024.root(10)); // 2.0

  print(3.root(2.1)); // 1.687332211990613
  print((-3).root(2.1)); // NaN
}
