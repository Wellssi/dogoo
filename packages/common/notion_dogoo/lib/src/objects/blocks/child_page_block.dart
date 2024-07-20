part of 'block.dart';

const String _childPage = 'child_database';

/// REF: https://developers.notion.com/reference/block#child-page
class ChildPageBlock extends Block {
  ChildPageBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.childPageTitle,
  }) : super(
          type: BlockType.childPage,
        );

  final String childPageTitle;

  factory ChildPageBlock.fromJson(Map<String, dynamic> json) {
    return ChildPageBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      childPageTitle: json[_childPage][_title],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      type.key: {_title: childPageTitle}
    });
    return json;
  }
}
