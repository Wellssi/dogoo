part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#table-rows
class TableRowBlock extends Block {
  TableRowBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.cells,
  }) : super(
          type: BlockType.tableRow,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> cells;

  factory TableRowBlock.fromJson(Map<String, dynamic> json) {
    return TableRowBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      cells: json[BlockType.tableRow.key][_cells],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json[BlockType.tableRow.key] = {
      _cells: cells,
    };

    return json;
  }
}
