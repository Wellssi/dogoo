import "dart:math" as math;

import "package:math_dogoo/src/functions/round_at.dart";

/// Returns the [y] root of the [x] to a [double].
double root(num x, num y) {
  if (x < 0 && (y % 2) == 1) {
    return -roundAt(math.pow(-x, 1 / y));
  } else {
    return roundAt(math.pow(x, 1 / y));
  }
}
