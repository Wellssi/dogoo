/// 숫자를 원하는 자리수의 문자열로 만들어 반환한다.
///
/// - 빈 자리는 0을 채워 넣는다.
/// - 음수는 '-' 를 제외하고 자리수를 계산한다.
String intToStringAsDigits(int val, {int digits = 2}) {
  String result = '';
  final int absInt = val.abs();
  final String absStrInt = absInt.toString();

  if (absStrInt.length < digits) {
    result = '${'0' * (digits - absStrInt.length)}$absStrInt';
  } else {
    result = absStrInt;
  }

  return val.isNegative ? '-$result' : result;
}
