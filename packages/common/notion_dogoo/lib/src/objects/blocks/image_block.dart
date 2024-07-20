part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#image
class ImageBlock extends Block {
  const ImageBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.file,
  }) : super(
          type: BlockType.image,
        );

  // TODO(Just-gomin): Implement this. File Object
  final Object file;

  factory ImageBlock.fromJson(Map<String, dynamic> json) {
    return ImageBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      file: json[BlockType.image.key][_file],
    );
  }
}
