import 'dart:math' as math;

/// Returns the hyperbolic cosine of the [x] to a [double].
double cosh(num x) {
  return (math.exp(x) + math.exp(-x)) / 2;
}
