part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#numbered-list-item
class NumberedListItemBlock extends Block {
  NumberedListItemBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.richText,
    required this.color,
    required this.children,
  }) : super(
          type: BlockType.numberedListItem,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;
  final NotionColor color;
  final List<Block> children;

  factory NumberedListItemBlock.fromJson(Map<String, dynamic> json) {
    return NumberedListItemBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.numberedListItem.key][_richText],
      color: NotionColor.fromKey(json[BlockType.numberedListItem.key][_color]),
      children: (json[BlockType.numberedListItem.key][_children] as List)
          .map((e) => Block.fromJson(e))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = super.toJson();

    json.addAll({
      BlockType.numberedListItem.key: {
        _richText: richText,
        _color: color.key,
        _children: children.map((e) => e.toJson()).toList(),
      },
    });

    return json;
  }
}
