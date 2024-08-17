part of 'parent.dart';

const String _blockId = 'block_id';

/// Block Parent Object
/// REF: https://developers.notion.com/reference/parent-object#block-parent
class BlockParent implements Parent {
  const BlockParent({
    required this.blockId,
  });

  @override
  String get type => _blockId;
  final bool blockId;

  factory BlockParent.fromJson(Map<String, dynamic> json) {
    return BlockParent(
      blockId: json[_blockId],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      _type: type,
      _blockId: blockId,
    };
  }
}
