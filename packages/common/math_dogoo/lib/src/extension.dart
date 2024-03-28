import 'package:math_dogoo/src/functions/functions.dart' as math_dogoo;

extension MathDogooExtension on num {
  /// Extension of [math_dogoo.absolute].
  /// Converts to a [double] and returns absolute value.
  double absolute() {
    return math_dogoo.absolute(this);
  }

  /// Extension of [math_dogoo.acosh].
  /// Converts to a [double] and returns hyperbolic arccosine value.
  double acosh() {
    return math_dogoo.acosh(this);
  }

  /// Extension of [math_dogoo.asinh].
  /// Converts to a [double] and returns hyperbolic arcsine value.
  double asinh() {
    return math_dogoo.asinh(this);
  }

  /// Extension of [math_dogoo.atanh].
  /// Converts to a [double] and returns hyperbolic arctangent value.
  double atanh() {
    return math_dogoo.atanh(this);
  }

  /// Extension of [math_dogoo.cosh].
  /// Converts to a [double] and returns hyperbolic cosine value.
  double cosh() {
    return math_dogoo.cosh(this);
  }

  /// Extension of [math_dogoo.ee].
  /// Converts to a [double] and returns x * 10^[y] value.
  double ee(int y) {
    return math_dogoo.ee(this, y);
  }

  /// Extension of [math_dogoo.factorial].
  /// Converts to an [int] and returns factorial value.
  double factorial() {
    return math_dogoo.factorial(toInt());
  }

  /// Extension of [math_dogoo.log2].
  /// Converts to a [double] and returns 10 base logarithm value.
  double log2() {
    return math_dogoo.log2(this);
  }

  /// Extension of [math_dogoo.log10].
  /// Converts to a [double] and returns 10 base logarithm value.
  double log10() {
    return math_dogoo.log10(this);
  }

  /// Extension of [math_dogoo.log10].
  /// Converts to a [double] and returns [base]-base logarithm value.
  double logN(num base) {
    return math_dogoo.logN(this, base);
  }

  /// Extension of [math_dogoo.root].
  /// Converts to a [double] and returns [n] square root of value.
  double root(num n) {
    return math_dogoo.root(this, n);
  }

  /// Extension of [math_dogoo.roundAt].
  /// Converts to a [double] and returns rounded value.
  double roundAt({int? fractionDigits}) {
    return math_dogoo.roundAt(this, fractionDigits: fractionDigits);
  }

  /// Extension of [math_dogoo.sinh].
  /// Converts to a [double] and returns hyperbolic sine value.
  double sinh() {
    return math_dogoo.sinh(this);
  }

  /// Extension of [math_dogoo.tanh].
  /// Converts to a [double] and returns hyperbolic tangent value.
  double tanh() {
    return math_dogoo.tanh(this);
  }
}
