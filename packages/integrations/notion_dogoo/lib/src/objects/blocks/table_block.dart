part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#table
class TableBlock extends Block {
  const TableBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.tableWidth,
    required this.hasColumnHeader,
    required this.hasRowHeader,
  }) : super(
          type: BlockType.table,
        );

  final int tableWidth;
  final bool hasColumnHeader;
  final bool hasRowHeader;

  factory TableBlock.fromJson(Map<String, dynamic> json) {
    return TableBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      tableWidth: json[BlockType.table.key][_tableWidth],
      hasColumnHeader: json[BlockType.table.key][_hasColumnHeader],
      hasRowHeader: json[BlockType.table.key][_hasRowHeader],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json[BlockType.table.key] = {
      _tableWidth: tableWidth,
      _hasColumnHeader: hasColumnHeader,
      _hasRowHeader: hasRowHeader,
    };

    return json;
  }
}
