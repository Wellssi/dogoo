part of 'block.dart';

/// REF1: https://developers.notion.com/reference/block#image
/// REF2: https://developers.notion.com/reference/block#supported-video-types
class VideoBlock extends Block {
  const VideoBlock({
    required super.id,
    required super.parent,
    required super.createdTime,
    required super.lastEditedTime,
    required super.creattedBy,
    required super.lastEditedBy,
    required super.hasChildren,
    required super.archived,
    required super.inTrash,
    required this.video,
  }) : super(
          type: BlockType.video,
        );

  final File video;

  factory VideoBlock.fromJson(Map<String, dynamic> json) {
    return VideoBlock(
      id: json[_id],
      parent: Parent.fromJson(json[_parent]),
      createdTime: DateTime.parse(json[_createdTime]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      creattedBy: User.fromJson(json[_createdBy]),
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
      hasChildren: json[_hasChildren],
      archived: json[_archived],
      inTrash: json[_inTrash],
      video: File.fromJson(json[BlockType.image.key]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      BlockType.image.key: video.toJson(),
    });
    return json;
  }
}
