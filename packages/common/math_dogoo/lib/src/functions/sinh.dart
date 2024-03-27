import 'dart:math' as math;

/// Returns the hyperbolic sine of the [x] to a [double].
double sinh(num x) {
  return (math.exp(x) - math.exp(-x)) / 2;
}
