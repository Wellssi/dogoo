part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#embed
class EmbedBlock extends Block {
  EmbedBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.url,
  }) : super(
          type: BlockType.embed,
        );

  final String url;

  factory EmbedBlock.fromJson(Map<String, dynamic> json) {
    return EmbedBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      url: json[BlockType.embed.key][_url],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.embed.key: {
        _url: url,
      },
    });
    return json;
  }
}
