/// Returns the foramtted [String] value like `Xxxx...` .
String stringStartsWithUpperCase(String val) {
  String first = val[0].toUpperCase();
  String remain = val.substring(1).toLowerCase();

  return '$first$remain';
}
