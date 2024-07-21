library notion_dogoo.objects.blocks;

import 'package:notion_dogoo/src/constants/constants.dart';
import 'package:notion_dogoo/src/objects/objects.dart';

part 'block_key.dart';
part 'bookmark_block.dart';
part 'breadcrumb_block.dart';
part 'bulleted_list_item_block.dart';
part 'callout_block.dart';
part 'child_database_block.dart';
part 'child_page_block.dart';
part 'code_block.dart';
part 'column_block.dart';
part 'column_list_block.dart';
part 'divider_block.dart';
part 'embed_block.dart';
part 'equation_block.dart';
part 'file_block.dart';
part 'heading_1_block.dart';
part 'heading_2_block.dart';
part 'heading_3_block.dart';
part 'image_block.dart';
part 'link_preview_block.dart';
part 'mention_block.dart';
part 'numbered_list_item_block.dart';
part 'paragraph_block.dart';
part 'pdf_block.dart';

/// REF: https://developers.notion.com/reference/block
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
