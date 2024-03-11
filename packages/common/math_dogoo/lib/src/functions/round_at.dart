/// [double] 타입의 [toStringAsFixed] 함수를 이용해, 반올림 하는 함수
/// [fractionDigits] 자리만큼 소수점을 남기고 반올림한다. [fractionDigits]가 주어지지 않는 경우, 소수점 가장 마지막
double roundAt(num x, {int? fractionDigits}) {
  if (fractionDigits == null) {
    String xStr = x.toString();
    List<String> splited = xStr.split(".");

    if (splited.length > 1) {
      fractionDigits = splited[1].length - 1;
    } else {
      fractionDigits = 0;
    }
  }

  return double.parse(x.toStringAsFixed(fractionDigits));
}
