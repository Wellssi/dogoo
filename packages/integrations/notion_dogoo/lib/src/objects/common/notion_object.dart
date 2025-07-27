/// Notion API의 모든 top-level 객체가 공통으로 가지는 속성들
/// REF: https://developers.notion.com/reference/intro#json-conventions
abstract class NotionObject {
  /// 객체의 타입을 나타내는 문자열 (e.g., "page", "database", "block", "user")
  final String object;

  /// UUIDv4 형식의 고유 식별자
  final String id;

  const NotionObject({
    required this.object,
    required this.id,
  });

  /// JSON으로부터 객체 생성
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NotionObject && other.id == id && other.object == object;
  }

  @override
  int get hashCode => Object.hash(object, id);
}
