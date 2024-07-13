library notion_dogoo.objects.blocks;

import 'package:notion_dogoo/src/constants/constants.dart';
import 'package:notion_dogoo/src/objects/parents/parent.dart';

import '../user.dart';

const String _object = 'object';
const String _id = 'id';
const String _parent = 'parent';
const String _type = 'type';
const String _createdTime = 'created_time';
const String _lastEditedTime = 'last_edited_time';
const String _createdBy = 'created_by';
const String _lastEditedBy = 'last_edited_by';
const String _hasChildren = 'has_children';
const String _archived = 'archived';
const String _inTrash = 'in_trash';

class Block {
  const Block({
    required this.id,
    required this.parent,
    required this.type,
    required this.createdTime,
    required this.lastEditedTime,
    required this.creattedBy,
    required this.lastEditedBy,
    required this.hasChildren,
    required this.archived,
    required this.inTrash,
  });
  final String id;
  final Parent parent;
  final BlockType type;
  final DateTime createdTime;
  final DateTime lastEditedTime;
  final User creattedBy;
  final User lastEditedBy;
  final bool archived;
  final bool inTrash;
  final bool hasChildren;

  String get object => 'block';

  factory Block.fromJson(Map<String, dynamic> json) {
    return Block(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      type: BlockType.fromKey(json[_type]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
    );
  }

  Map<String, Object> toJson() {
    return {
      _object: object,
      _id: id,
      _parent: parent.toJson(),
      _type: type.key,
      _createdTime: createdTime.toIso8601String(),
      _lastEditedTime: lastEditedTime.toIso8601String(),
      _createdBy: creattedBy.toJson(),
      _lastEditedBy: lastEditedBy.toJson(),
      _hasChildren: hasChildren,
      _archived: archived,
      _inTrash: inTrash,
    };
  }
}
