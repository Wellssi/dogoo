part of 'block.dart';

class BulletedListItemBlock extends Block {
  BulletedListItemBlock({
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
          type: BlockType.bulletedListItem,
        );

  // TODO(Just-gomin): Implement this. array of rich test.
  final List<Object> richText;
  final Color color;
  final List<Block> children;

  factory BulletedListItemBlock.fromJson(Map<String, dynamic> json) {
    return BulletedListItemBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.bulletedListItem.key][_richText],
      color: Color.fromKey(json[BlockType.bulletedListItem.key][_color]),
      children: json[BlockType.bulletedListItem.key][_children],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.bulletedListItem.key: {
        _richText: richText,
        _color: color.key,
        _children: children.map((e) => e.toJson()).toList(),
      }
    });
    return json;
  }
}
