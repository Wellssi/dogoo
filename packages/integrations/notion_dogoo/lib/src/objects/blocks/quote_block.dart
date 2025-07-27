part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#quote
class QuoteBlock extends Block {
  QuoteBlock({
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
          type: BlockType.quote,
        );

  final List<Object> richText;
  final Color color;
  final List<Block> children;

  factory QuoteBlock.fromJson(Map<String, dynamic> json) {
    return QuoteBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.quote.key][_richText],
      color: Color.fromKey(json[BlockType.quote.key][_color]),
      children:
          (json[BlockType.quote.key][_children] as List<Map<String, dynamic>>)
              .map((e) => Block.fromJson(json))
              .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.quote.key: {
        _richText: richText,
        _color: color.key,
        _children: children.map((e) => e.toJson()).toList(),
      },
    });

    return json;
  }
}
