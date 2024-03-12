import 'dart:math' as math;

/// Returns the 10 base logarithm of the [x] to a [double].
/// Returns negative infinity if [x] is equal to zero. Returns NaN if [x] is NaN or less than zero.
double log10(num x) {
  return math.log(x) / math.ln10;
}
