part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#synced-block
class SyncedBlock extends Block {
  SyncedBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    this.syncedFrom,
    required this.children,
  }) : super(
          type: BlockType.syncedBlock,
        );

  /// [Origin Synced Block]
  ///
  /// The value is always null to signify that this is an original synced block
  /// that does not refer to another block.
  ///
  /// [Duplicated Synced Block]
  ///
  /// The value is not null to signify that this block is a duplicate of another.
  final SyncedFrom? syncedFrom;
  final List<Block> children;

  factory SyncedBlock.fromJson(Map<String, dynamic> json) {
    return SyncedBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      syncedFrom: SyncedFrom.fromJson(
        json[BlockType.syncedBlock.key][_syncedFrom],
      ),
      children: (json[BlockType.syncedBlock.key][_children]
              as List<Map<String, dynamic>>)
          .map((e) => Block.fromJson(json))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.syncedBlock.key: {
        _syncedFrom: syncedFrom,
        _children: children.map((e) => e.toJson()).toList(),
      },
    });

    return json;
  }
}

class SyncedFrom {
  const SyncedFrom({
    this.type,
    required this.block_id,
  });

  final String? type;
  final String block_id;

  factory SyncedFrom.fromJson(Map<String, dynamic> json) {
    return SyncedFrom(
      type: json[_type],
      block_id: json[_blockId],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (type != null) {
      json[_type] = type;
    }
    json[_blockId] = block_id;

    return json;
  }
}
