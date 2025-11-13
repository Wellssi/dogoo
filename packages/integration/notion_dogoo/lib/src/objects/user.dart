import 'package:notion_dogoo/src/constants/constants.dart';

const String _object = 'object';
const String _id = 'id';
const String _type = 'type';
const String _name = 'name';
const String _avatarUrl = 'avatar_url';

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
      object: json[_object],
      id: json[_id],
      type: json[_type] != null
          ? UserType.values.firstWhere((e) => e.name == json[_type])
          : null,
      name: json[_name],
      avatarUrl: json[_avatarUrl],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _object: object,
      _id: id,
      _type: type?.name,
      _name: name,
      _avatarUrl: avatarUrl,
    };
  }
}
