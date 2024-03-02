import 'dart:convert';

/// [Map] 데이터에 대한, 보기 좋은 Json String을 반환.
String mapToPrettyJsonString(Map map, {int indentSize = 2}) {
  JsonEncoder encoder = JsonEncoder.withIndent(' ' * indentSize);
  String prettyJson = encoder.convert(map);

  return prettyJson;
}
