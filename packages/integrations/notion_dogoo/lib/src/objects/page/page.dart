library notion_dogoo.objects.page;

import 'package:notion_dogoo/src/objects/common/file.dart';
import 'package:notion_dogoo/src/objects/parents/parent.dart';
import 'package:notion_dogoo/src/objects/common/user.dart';

import 'page_propeties/page_properties.dart';

part 'page_key.dart';

/// REF: https://developers.notion.com/reference/page
class Page {
  Page({
    required this.id,
    required this.createdTime,
    required this.createdBy,
    required this.lastEditedTime,
    required this.lastEditedBy,
    required this.archived,
    required this.inTrash,
    required this.icon,
    required this.cover,
    required this.properties,
    required this.parent,
    required this.url,
    required this.publicUrl,
  });

  final String id;
  final DateTime createdTime;
  final User createdBy;
  final DateTime lastEditedTime;
  final User lastEditedBy;
  final bool archived;
  final bool inTrash;
  // TODO(Just-gomin): Implement this. An emoji or file.
  final Object icon;
  final File cover;
  final Map<String, PageProperty> properties;
  final Parent parent;
  final String url;
  final String publicUrl;

  String get object => 'page';

  factory Page.fromJson(Map<String, dynamic> json) {
    return Page(
      id: json[_id],
      createdTime: DateTime.parse(json[_createdTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      archived: json[_archived],
      inTrash: json[_inTrash],
      icon: json[_icon],
      cover: File.fromJson(json[_cover]),
      properties: PageProperties.fromJson(json[_properties]),
      parent: Parent.fromJson(json[_parent]),
      url: json[_url],
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
      _archived: archived,
      _inTrash: inTrash,
      _icon: icon,
      _cover: cover.toJson(),
      _properties: PageProperties.toJson(properties),
      _parent: parent.toJson(),
      _url: url,
      _publicUrl: publicUrl,
    };
  }
}
