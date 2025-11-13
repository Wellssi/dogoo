library notion_dogoo.objects.comment;

import 'package:notion_dogoo/src/objects/blocks/rich_text/rich_text.dart';
import 'package:notion_dogoo/src/objects/user.dart';

part 'comment_key.dart';

/// REF: https://developers.notion.com/reference/comment-object
class Comment {
  Comment({
    required this.id,
    required this.parent,
    required this.discussionId,
    required this.createdTime,
    required this.createdBy,
    required this.lastEditedTime,
    required this.richText,
  });

  final String id;
  // TODO(Just-gomin): Implement proper parent type (page, block, or discussion)
  final Map<String, dynamic> parent;
  final String discussionId;
  final DateTime createdTime;
  final User createdBy;
  final DateTime lastEditedTime;
  final List<RichText> richText;

  String get object => 'comment';

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json[_id],
      parent: json[_parent] as Map<String, dynamic>,
      discussionId: json[_discussionId],
      createdTime: DateTime.parse(json[_createdTime]),
      createdBy: User.fromJson(json[_createdBy]),
      lastEditedTime: DateTime.parse(json[_lastEditedTime]),
      richText: (json[_richText] as List)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _object: object,
      _id: id,
      _parent: parent,
      _discussionId: discussionId,
      _createdTime: createdTime.toIso8601String(),
      _createdBy: createdBy.toJson(),
      _lastEditedTime: lastEditedTime.toIso8601String(),
      _richText: richText.map((e) => e.toJson()).toList(),
    };
  }
}
