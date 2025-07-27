part of 'block.dart';

class DividerBlock extends Block {
  DividerBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
  }) : super(
          type: BlockType.divider,
        );

  factory DividerBlock.fromJson(Map<String, dynamic> json) {
    return DividerBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.divider.key: {},
    });
    return json;
  }
}
