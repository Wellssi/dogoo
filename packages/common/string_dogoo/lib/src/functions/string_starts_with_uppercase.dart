/// 주어진 문자열의 첫 글자를 대문자로, 나머지 글자를 소문자로 변경한 문자열 반환
String stringStartsWithUpperCase(String val) {
  String first = val[0].toUpperCase();
  String remain = val.substring(1).toLowerCase();

  return '$first$remain';
}
