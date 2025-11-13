part of 'block.dart';

class CodeBlock extends Block {
  CodeBlock({
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
    required this.richText,
    required this.language,
  }) : super(
          type: BlockType.code,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> caption;

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> richText;

  final CodeLanguage language;

  factory CodeBlock.fromJson(Map<String, dynamic> json) {
    return CodeBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      caption: json[BlockType.code.key][_caption],
      richText: json[BlockType.code.key][_richText],
      language: CodeLanguage.fromString(json[BlockType.code.key][_language]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.code.key: {
        _caption: caption,
        _richText: richText,
        _language: language.key,
      }
    });
    return json;
  }
}
