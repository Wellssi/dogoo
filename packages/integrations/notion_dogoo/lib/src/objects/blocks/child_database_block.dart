part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#child-database
class ChildDatabaseBlock extends Block {
  ChildDatabaseBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.childDatabaseTitle,
  }) : super(
          type: BlockType.childDatabase,
        );

  final String childDatabaseTitle;

  factory ChildDatabaseBlock.fromJson(Map<String, dynamic> json) {
    return ChildDatabaseBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      childDatabaseTitle: json[BlockType.childDatabase.key][_title],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.childDatabase.key: {
        _title: childDatabaseTitle,
      }
    });
    return json;
  }
}
