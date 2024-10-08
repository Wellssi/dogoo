part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#headings
class Heading3Block extends Block {
  Heading3Block({
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
          type: BlockType.heading3,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;
  final Color color;
  final bool isToggleable;

  factory Heading3Block.fromJson(Map<String, dynamic> json) {
    return Heading3Block(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.heading3.key][_richText],
      color: Color.fromKey(json[BlockType.heading3.key][_color]),
      isToggleable: json[BlockType.heading3.key][_isToggleable],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.heading3.key: {
        _richText: richText,
        _color: color.key,
        _isToggleable: isToggleable,
      }
    });
    return json;
  }
}
