/// Returns the factorial of [x]. (0 <= x <= 10)
List<double> _factorialList = [
  1, // 0!
  1, // 1!
  2, // 2!
  6, // 3!
  24, // 4!
  120, // 5!
  720, // 6!
  5040, // 7!
  40320, // 8!
  362880, // 9!
  3628800 // 10!
];

/// Returns the factorial of [x].
/// If [x] is less than 0, returns NaN.
double factorial(int x) {
  if (x < 0) {
    return double.nan;
  }

  if (x <= 10) {
    return _factorialList[x];
  }

  return x * factorial(x - 1);
}
