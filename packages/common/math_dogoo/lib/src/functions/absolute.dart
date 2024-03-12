/// Return absolute value of the [x] to a [double].
double absolute(num x) {
  return (x.isNegative ? x * -1.0 : x).toDouble();
}
