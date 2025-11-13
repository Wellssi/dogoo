part of 'block.dart';

// TODO(Just-gomin): Implement MentionBlock
/// REF: https://developers.notion.com/reference/block#mention
class MentionBlock extends Block {
  MentionBlock({
    required super.id,
    required super.parent,
    required super.type,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
  });
}
