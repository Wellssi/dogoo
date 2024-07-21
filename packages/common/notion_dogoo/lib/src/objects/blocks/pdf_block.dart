part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#pdf
class PDFBlock extends Block {
  const PDFBlock({
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
    required this.pdf,
  }) : super(
          type: BlockType.pdf,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> caption;
  final File pdf;

  factory PDFBlock.fromJson(Map<String, dynamic> json) {
    return PDFBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      caption: json[BlockType.pdf.key][_caption],
      pdf: File.fromJson(json[BlockType.pdf.key]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.pdf.key: {
        _caption: caption,
        ...pdf.toJson(),
      },
    });

    return json;
  }
}
