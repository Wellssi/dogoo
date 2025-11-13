library notion_dogoo.objects.database;

import 'package:notion_dogoo/src/objects/blocks/rich_text/rich_text.dart';
import 'package:notion_dogoo/src/objects/file.dart';
import 'package:notion_dogoo/src/objects/parents/parent.dart';
import 'package:notion_dogoo/src/objects/user.dart';

part 'database_key.dart';

/// REF: https://developers.notion.com/reference/database
class Database {
  Database({
    required this.id,
    required this.createdTime,
    required this.createdBy,
    required this.lastEditedTime,
    required this.lastEditedBy,
    required this.title,
    required this.description,
    this.icon,
    this.cover,
    required this.properties,
    required this.parent,
    required this.url,
    required this.archived,
    required this.isInline,
    this.publicUrl,
  });

  final String id;
  final DateTime createdTime;
  final User createdBy;
  final DateTime lastEditedTime;
  final User lastEditedBy;
  final List<RichText> title;
  final List<RichText> description;
  // TODO(Just-gomin): Implement this. An emoji or file.
  final Object? icon;
  final File? cover;
  // TODO(Just-gomin): Implement database property objects
  final Map<String, dynamic> properties;
  final Parent parent;
  final String url;
  final bool archived;
  final bool isInline;
  final String? publicUrl;

  String get object => 'database';

  factory Database.fromJson(Map<String, dynamic> json) {
    return Database(
      id: json[_id],
      createdTime: DateTime.parse(json[_createdTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      title: (json[_title] as List)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: (json[_description] as List)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json[_icon],
      cover: json[_cover] != null ? File.fromJson(json[_cover]) : null,
      properties: json[_properties] as Map<String, dynamic>,
      parent: Parent.fromJson(json[_parent]),
      url: json[_url],
      archived: json[_archived],
      isInline: json[_isInline],
      publicUrl: json[_publicUrl],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _object: object,
      _id: id,
      _createdTime: createdTime.toIso8601String(),
      _createdBy: createdBy.toJson(),
      _lastEditedTime: lastEditedTime.toIso8601String(),
      _lastEditedBy: lastEditedBy.toJson(),
      _title: title.map((e) => e.toJson()).toList(),
      _description: description.map((e) => e.toJson()).toList(),
      if (icon != null) _icon: icon,
      if (cover != null) _cover: cover!.toJson(),
      _properties: properties,
      _parent: parent.toJson(),
      _url: url,
      _archived: archived,
      _isInline: isInline,
      if (publicUrl != null) _publicUrl: publicUrl,
    };
  }
}
