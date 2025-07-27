part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#headings
class Heading2Block extends Block {
  Heading2Block({
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
    required this.isToggleable,
  }) : super(
          type: BlockType.heading2,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;
  final NotionColor color;
  final bool isToggleable;

  factory Heading2Block.fromJson(Map<String, dynamic> json) {
    return Heading2Block(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.heading2.key][_richText],
      color: NotionColor.fromKey(json[BlockType.heading2.key][_color]),
      isToggleable: json[BlockType.heading2.key][_isToggleable],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.heading2.key: {
        _richText: richText,
        _color: color.key,
        _isToggleable: isToggleable,
      }
    });
    return json;
  }
}
