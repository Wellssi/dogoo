/// Returns the factorial of [x]. (0 <= x <= 10)
List<int> _factorialList = [
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

int factorial(int x) {
  if (x < 0) {
    throw ArgumentError('Factorial of negative number is not defined.');
  }

  if (x <= 10) {
    return _factorialList[x];
  }

  return x * factorial(x - 1);
}
