import 'notion_property_keys.dart';

/// A base class representing a Notion object with common properties.
class NotionObject {
  /// Constructs a [NotionObject] with the given properties.
  const NotionObject({required this.id, required this.object});

  /// Notion object's unique identifier.
  final String id;

  /// Type of the Notion object (e.g., "page", "database").
  final String object;

  /// Creates a NotionObject instance from a JSON map.
  factory NotionObject.fromJson(Map<String, dynamic> json) {
    return NotionObject(
      id: json[NotionPropertyKeys.id] as String,
      object: json[NotionPropertyKeys.object] as String,
    );
  }

  /// Converts the NotionObject instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      NotionPropertyKeys.id: id,
      NotionPropertyKeys.object: object,
    };
  }
}
