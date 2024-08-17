part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#equation
class EquationBlock extends Block {
  EquationBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.expression,
  }) : super(
          type: BlockType.equation,
        );

  final String expression;

  factory EquationBlock.fromJson(Map<String, dynamic> json) {
    return EquationBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      expression: json[BlockType.equation.key][_expression],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.equation.key: {
        _expression: expression,
      },
    });
    return json;
  }
}
