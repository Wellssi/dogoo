part of 'block.dart';

const String _file = 'file';
const String _name = 'name';

/// REF: https://developers.notion.com/reference/block#file
class FileBlock extends Block {
  FileBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.caption,
    required this.fileType,
    required this.file,
    required this.name,
  }) : super(
          type: BlockType.file,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> caption;
  final FileType fileType;
  // TODO(Just-gomin): Implement this. File object.
  final Object file;
  final String name;

  factory FileBlock.fromJson(Map<String, dynamic> json) {
    return FileBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      caption: json[BlockType.file.key][_caption],
      fileType: json[BlockType.file.key][_type],
      file: json[BlockType.file.key][_file],
      name: json[BlockType.file.key][_name],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.file.key: {
        _caption: caption,
        _type: fileType.key,
        // TODO(Just-gomin): Implement this after File object.
        _file: file,
        _name: name,
      },
    });

    return json;
  }
}
