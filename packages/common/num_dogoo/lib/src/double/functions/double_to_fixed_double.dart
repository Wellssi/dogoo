/// double 타입의 값을 digits 만큼의 길이만 남기고 잘라낸다.
double doubleToFixedDouble({required double val, required int digits}) {
  return double.parse(val.toStringAsFixed(digits));
}
