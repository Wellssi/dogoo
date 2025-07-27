part of 'block.dart';

/// REF: https://developers.notion.com/reference/block#bookmark
class BookmarkBlock extends Block {
  BookmarkBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.createdBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.caption,
    required this.url,
  }) : super(
          type: BlockType.bookmark,
        );

  // TODO(Just-gomin): Implement this. array of rich text objects.
  final List<Object> caption;
  final String url;

  factory BookmarkBlock.fromJson(Map<String, dynamic> json) {
    return BookmarkBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      caption: json[BlockType.bookmark.key][_caption],
      url: json[BlockType.bookmark.key][_url],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      BlockType.bookmark.key: {
        _caption: caption,
        _url: url,
      }
    });
    return json;
  }
}
