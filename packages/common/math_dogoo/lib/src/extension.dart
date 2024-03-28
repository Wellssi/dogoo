import 'package:math_dogoo/src/functions/functions.dart' as math_dogoo;

extension MathDogooExtension on num {
  /// Extension of [math_dogoo.absolute].
  /// Converts to a [double] and returns absolute value.
  double absolute() {
    return math_dogoo.absolute(this);
  }

  /// Extension of [math_dogoo.roundAt].
  /// Converts to a [double] and returns rounded value.
  double roundAt({int? fractionDigits}) {
    return math_dogoo.roundAt(this, fractionDigits: fractionDigits);
  }

  /// Extension of [math_dogoo.log10].
  /// Converts to a [double] and returns 10 base logarithm value.
  double log10() {
    return math_dogoo.log10(this);
  }

  /// Extension of [math_dogoo.root].
  /// Converts to a [double] and returns [n] square root of value.
  double root(num n) {
    return math_dogoo.root(this, n);
  }
}
