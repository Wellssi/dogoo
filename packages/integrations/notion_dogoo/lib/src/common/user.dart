import '../types/types.dart';
import 'common.dart';

/// A representation of a Notion user.
class User extends NotionObject {
  /// Constructs a [User] with the given properties.
  const User({
    required super.id,
    required super.object,
    this.type,
    this.name,
    this.avatarUrl,
  });

  /// Type of the user
  final UserType? type;

  /// User's name, as displayed in Notion
  final String? name;

  /// Chosen avatar image
  final String? avatarUrl;

  /// Creates a [User] instance from a JSON map.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json[NotionPropertyKeys.id] as String,
      object: json[NotionPropertyKeys.object] as String,
      type:
          json.containsKey(NotionPropertyKeys.type) &&
              json[NotionPropertyKeys.type] != null
          ? UserType.fromJson(json[NotionPropertyKeys.type] as String)
          : null,
      name: json.containsKey(NotionPropertyKeys.name)
          ? json[NotionPropertyKeys.name] as String?
          : null,
      avatarUrl: json.containsKey(NotionPropertyKeys.avatarUrl)
          ? json[NotionPropertyKeys.avatarUrl] as String?
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    if (type != null) {
      data[NotionPropertyKeys.type] = type!.toJson();
    }
    if (name != null) {
      data[NotionPropertyKeys.name] = name;
    }
    if (avatarUrl != null) {
      data[NotionPropertyKeys.avatarUrl] = avatarUrl;
    }
    return data;
  }
}
