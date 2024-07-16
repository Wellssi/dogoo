part of 'block.dart';

const String _icon = 'icon';

/// REF: https://developers.notion.com/reference/block#callout
class CalloutBlock extends Block {
  CalloutBlock({
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
    required this.icon,
    required this.color,
  }) : super(
          type: BlockType.callout,
        );

  // TODO(Just-gomin): Implement this. array of rich test.
  final List<Object> richText;
  // TODO(Just-gomin): Implement this. An emoji or file.
  final Object icon;
  final Color color;

  factory CalloutBlock.fromJson(Map<String, dynamic> json) {
    return CalloutBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.callout.name][_richText],
      icon: json[BlockType.callout.name][_icon],
      color: Color.fromKey(json[BlockType.callout.name][_color]),
    );
  }

  @override
  Map<String, Object> toJson() {
    return {
      ...super.toJson(),
      BlockType.callout.name: {
        _richText: richText,
        _icon: icon,
        _color: color.key,
      },
    };
  }
}
