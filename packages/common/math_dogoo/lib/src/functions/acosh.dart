import 'dart:math' as math;

/// Returns the hyperbolic arccosine of the [x] to a [double].
double acosh(num x) {
  if (x < 1) {
    return double.nan;
  }

  return math.log(x + math.sqrt(x * x - 1));
}
