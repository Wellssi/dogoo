part of 'block.dart';

const String _childDatabase = 'child_database';
const String _title = 'title';

/// REF: https://developers.notion.com/reference/block#child-database
class ChildDatabaseBlock extends Block {
  ChildDatabaseBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.databaseTitle,
  }) : super(
          type: BlockType.childDatabase,
        );

  final String databaseTitle;

  factory ChildDatabaseBlock.fromJson(Map<String, dynamic> json) {
    return ChildDatabaseBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      databaseTitle: json[_childDatabase][_title],
    );
  }

  @override
  Map<String, Object> toJson() {
    return {
      ...super.toJson(),
      _childDatabase: {
        _title: databaseTitle,
      },
    };
  }
}
