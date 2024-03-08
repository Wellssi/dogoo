import 'dart:convert';

/// [Map] 데이터에 대한, 보기 좋은 Json String을 반환.
String mapToPrettyJsonString<KeyType, ValueType>(
  Map<KeyType, ValueType> map, {
  int indentSize = 2,
}) {
  final JsonEncoder encoder = JsonEncoder.withIndent(' ' * indentSize);
  final String prettyJson = encoder.convert(map);

  return prettyJson;
}
