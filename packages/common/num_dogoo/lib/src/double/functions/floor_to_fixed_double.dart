/// double 타입의 값의 소수점 부분은 digits 만큼 남기고 잘라낸다.
///   /// ex)
/// ```
///   double myPI = 3.1415926535;
///   double fixedMyPI1 = floorToFixedDouble(value: myPI, digits: 1); // 3.1
///   double fixedMyPI2 = floorToFixedDouble(value: myPI, digits: 2); // 3.14
/// ```
double floorToFixedDouble({required double value, required int digits}) {
  String strDouble = value.toString();
  List<String> strList = strDouble.split('.');

  if (strList.length < 2) return value;

  String integerPart = strList[0];
  String pointPart = strList[1];
  if (pointPart.length > digits) pointPart = pointPart.substring(0, digits);

  return double.parse('${integerPart}.${pointPart}');
}
