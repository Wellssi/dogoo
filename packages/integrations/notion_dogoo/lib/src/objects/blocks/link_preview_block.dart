part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#link-preview
class LinkPreviewBlock extends Block {
  LinkPreviewBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.url,
  }) : super(
          type: BlockType.linkPreview,
        );

  final String url;

  factory LinkPreviewBlock.fromJson(Map<String, dynamic> json) {
    return LinkPreviewBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      url: json[BlockType.linkPreview.key][_url],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = super.toJson();

    json.addAll({
      BlockType.linkPreview.key: {
        _url: url,
      },
    });

    return json;
  }
}
