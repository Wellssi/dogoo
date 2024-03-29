/// Map에서 원하는 Key에 대한 값을 가져오는 함수.
///
/// 1. Map에 원하는 Key가 있는지 확인
/// 2. Key가 존재한다면, 결과 반환
///
/// - KeyType: Map에서 찾고자하는 Key의 타입
/// - ReturnType: Map에서 해당 Key에 반환 해줄 것이라 생각하는 타입
///
/// - map: [Map<KeyType, dynamic>] Map데이터
/// - key: [KeyType]의 Map에서 찾고자하는 key
///
ReturnType? mapGetIfPresent<KeyType, ReturnType>(
  Map<KeyType, ReturnType> map,
  KeyType key, {
  ReturnType? defaultValue,
}) {
  if (map.containsKey(key)) {
    return map[key] as ReturnType;
  } else {
    return defaultValue;
  }
}
