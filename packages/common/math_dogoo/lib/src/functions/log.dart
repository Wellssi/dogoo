import 'dart:math' as math;

/// Returns the y base logarithm of the [x] to a [double].
/// This is approximately equal to `log(x) / log(y)`.
double log(num x, num y) {
  return math.log(x) / math.log(y);
}
