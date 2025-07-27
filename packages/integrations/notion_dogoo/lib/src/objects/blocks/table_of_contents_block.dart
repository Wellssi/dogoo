part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#table-of-contents
class TableOfContentsBlock extends Block {
  TableOfContentsBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    this.color = NotionColor.defaultColor,
  }) : super(
          type: BlockType.tableOfContents,
        );

  final NotionColor color;

  factory TableOfContentsBlock.fromJson(Map<String, dynamic> json) {
    return TableOfContentsBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      color: NotionColor.fromKey(json[BlockType.tableOfContents][_color]),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.tableOfContents.key: {
        _color: color.key,
      },
    });

    return json;
  }
}
