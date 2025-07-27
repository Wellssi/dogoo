part of 'block.dart';

class ParagraphBlock extends Block {
  ParagraphBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.richText,
    required this.color,
    required this.children,
  }) : super(
          type: BlockType.paragraph,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;
  final NotionColor color;
  final List<Block> children;

  factory ParagraphBlock.fromJson(Map<String, dynamic> json) {
    return ParagraphBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.paragraph.key][_richText],
      color: NotionColor.fromKey(json[BlockType.paragraph.key][_color]),
      children: (json[BlockType.paragraph.key][_children] as List)
          .map((e) => Block.fromJson(e))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = super.toJson();

    json.addAll({
      BlockType.paragraph.key: {
        _richText: richText,
        _color: color.key,
        _children: children.map((e) => e.toJson()).toList(),
      },
    });

    return json;
  }
}
