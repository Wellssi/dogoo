import 'package:math_dogoo/src/functions/functions.dart' as math_dogoo;

extension MathDogooExtension on num {
  /// Extension of [math_dogoo.absolute].
  /// Converts to a [double] and returns absolute value.
  double absolute() {
    return math_dogoo.absolute(this);
  }

  /// Extension of [math_dogoo.factorial].
  /// Converts to an [int] and returns factorial value.
  int factorial() {
    return math_dogoo.factorial(toInt());
  }

  /// Extension of [math_dogoo.roundAt].
  /// Converts to a [double] and returns rounded value.
  double roundAt({int? fractionDigits}) {
    return math_dogoo.roundAt(this, fractionDigits: fractionDigits);
  }

  /// Extension of [math_dogoo.hyperbolicCosine(x)].
  /// Converts to a [double] and returns hyperbolic cosine value.
  double hyperbolicCosine() {
    return math_dogoo.hyperbolicCosine(this);
  }

  /// Extension of [math_dogoo.hyperbolicSine(x)].
  /// Converts to a [double] and returns hyperbolic sine value.
  double hyperbolicSine() {
    return math_dogoo.hyperbolicSine(this);
  }

  /// Extension of [math_dogoo.hyperbolicTangent(x)].
  /// Converts to a [double] and returns hyperbolic tangent value.
  double hyperbolicTangent() {
    return math_dogoo.hyperbolicTangent(this);
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
  double log(num base) {
    return math_dogoo.log(this, base);
  }

  /// Extension of [math_dogoo.root].
  /// Converts to a [double] and returns [n] square root of value.
  double root(num n) {
    return math_dogoo.root(this, n);
  }
}
