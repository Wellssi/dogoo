part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#to-do
class ToDoBlock extends Block {
  ToDoBlock({
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
    this.checked,
    this.color = NotionColor.defaultColor,
    required this.children,
  }) : super(
          type: BlockType.toDo,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;
  final bool? checked;
  final NotionColor color;
  final List<Block> children;

  factory ToDoBlock.fromJson(Map<String, dynamic> json) {
    return ToDoBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      richText: json[BlockType.toDo.key][_richText],
      checked: json[BlockType.toDo.key][_checked],
      color: NotionColor.fromKey(json[BlockType.toDo.key][_color]),
      children: json[_children]
          .map<Block>(
            (child) => Block.fromJson(child),
          )
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.toDo.key: {
        _richText: richText,
        _checked: checked,
        _color: color.key,
        _children: children.map((child) => child.toJson()).toList(),
      },
    });

    return json;
  }
}
