import 'notion_object_keys.dart';

/// A base class representing a Notion object with common properties.
class NotionObject {
  /// Constructs a [NotionObject] with the given properties.
  const NotionObject({
    required this.id,
    required this.object,
    required this.createdTime,
    required this.lastEditedTime,
  });

  /// Notion object's unique identifier.
  final String id;

  /// Type of the Notion object (e.g., "page", "database").
  final String object;

  /// Timestamp when the object was created.
  final DateTime createdTime;

  /// Timestamp when the object was last edited.
  final DateTime lastEditedTime;

  /// Creates a NotionObject instance from a JSON map.
  factory NotionObject.fromJson(Map<String, dynamic> json) {
    return NotionObject(
      id: json[kId] as String,
      object: json[kObject] as String,
      createdTime: DateTime.parse(json[kCreatedTime] as String),
      lastEditedTime: DateTime.parse(json[kLastEditedTime] as String),
    );
  }

  /// Converts the NotionObject instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      kId: id,
      kObject: object,
      kCreatedTime: createdTime.toIso8601String(),
      kLastEditedTime: lastEditedTime.toIso8601String(),
    };
  }
}
