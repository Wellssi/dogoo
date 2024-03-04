/// Map에 Key, Value를 추가 할 때 사용할 수 있는 함수
///
/// - KeyType: Map에서 찾고자하는 Key의 타입
/// - valueType: Map에서 해당 Key에 반환 해줄 것이라 생각하는 타입
///
/// - value를 제공하는 경우, map에 key-value 쌍을 추가
/// - value가 Null 이고, defaultValue가 제공된 경우 key-defaultValue 쌍을 추가
/// - value와 defaultValue가 모두 제공되지 않은 경우, 기존 map 반환
Map<KeyType, ValueType> mapSetIfPresent<KeyType, ValueType>({
  required Map<KeyType, ValueType> map,
  required KeyType key,
  ValueType? value,
  ValueType? defaultValue,
}) {
  if (key != null && (value != null || defaultValue != null)) {
    map[key] = value ?? defaultValue!;
  }
  return map;
}
