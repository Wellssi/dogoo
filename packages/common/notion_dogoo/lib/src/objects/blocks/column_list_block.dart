part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#column-list-and-column
class ColumnListBlock extends Block {
  ColumnListBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
  }) : super(
          type: BlockType.columnList,
        );

  factory ColumnListBlock.fromJson(Map<String, dynamic> json) {
    return ColumnListBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
    );
  }
}
