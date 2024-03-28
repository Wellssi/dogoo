import 'dart:math' as math;

/// Returns the hyperbolic arctangent of the [x] to a [double].
double atanh(num x) {
  if (x == 1 || x == -1) {
    return double.infinity;
  }

  if (x.isNaN || (x < -1 || x > 1)) {
    return double.nan;
  }

  return (math.log(1 + x) - math.log(1 - x)) / 2;
}
