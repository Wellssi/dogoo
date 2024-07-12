import 'package:notion_dogoo/src/constants/constants.dart';

/// REF: https://developers.notion.com/reference/user#where-user-objects-appear-in-the-api
class User {
  const User({
    required this.object,
    required this.id,
    this.type,
    this.name,
    this.avatarUrl,
  });

  final String object;
  final String id;
  final UserType? type;
  final String? name;
  final String? avatarUrl;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      object: json['object'],
      id: json['id'],
      type: json['type'] != null
          ? UserType.values.firstWhere((e) => e.name == json['type'])
          : null,
      name: json['name'],
      avatarUrl: json['avatar_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'id': id,
      'type': type?.name,
      'name': name,
      'avatar_url': avatarUrl,
    };
  }
}
