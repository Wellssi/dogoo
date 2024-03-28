import 'dart:math' as math;

/// Returns the hyperbolic arcsine of the [x] to a [double].
double asinh(num x) {
  if (x.isNaN) {
    return double.nan;
  }

  return math.log(x + math.sqrt(x * x + 1));
}
