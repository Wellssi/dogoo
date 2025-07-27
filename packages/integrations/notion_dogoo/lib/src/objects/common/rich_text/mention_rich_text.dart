part of 'rich_text.dart';

/// REF: https://developers.notion.com/reference/rich-text#mention
class MentionRichText extends RichText {
  MentionRichText({
    required super.annotations,
    required super.plainText,
    super.href,
    required this.object,
  }) : super(
          type: RichTextType.mention,
        );

  final MentionTypeObject object;

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _mention: object.toJson(),
    });

    return json;
  }

  factory MentionRichText.fromJson(Map<String, dynamic> json) {
    return MentionRichText(
      annotations: json[_annotations],
      plainText: json[_plainText],
      href: json[_href],
      object: MentionTypeObject.fromJson(json[_mention]),
    );
  }
}

class MentionTypeObject {
  const MentionTypeObject({
    required this.type,
  });

  final MentionType type;

  factory MentionTypeObject.fromJson(Map<String, dynamic> json) {
    final String typeKey = json[_type];
    final MentionType type = MentionType.fromKey(typeKey);

    switch (type) {
      case MentionType.database:
        return DatabaseMentionTypeObject.fromJson(json[typeKey]);
      case MentionType.date:
        return DateMentionTypeObject.fromJson(json[typeKey]);
      case MentionType.linkPreview:
        return LinkPreviewMentionTypeObject.fromJson(json[typeKey]);
      case MentionType.page:
        return PageMentionTypeObject.fromJson(json[typeKey]);
      case MentionType.templateMention:
        return TemplateMentionTypeObject.fromJson(json[typeKey]);
      default:
        return MentionTypeObject(type: MentionType.date);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json.addAll({
      _type: type.key,
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#database-mention-type-object
class DatabaseMentionTypeObject extends MentionTypeObject {
  const DatabaseMentionTypeObject({
    required this.id,
  }) : super(
          type: MentionType.database,
        );
  final String id;

  factory DatabaseMentionTypeObject.fromJson(Map<String, dynamic> json) {
    String id = json[_id];
    return DatabaseMentionTypeObject(id: id);
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        _id: id,
      },
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#date-mention-type-object
class DateMentionTypeObject extends MentionTypeObject {
  DateMentionTypeObject({
    required this.start,
    this.end,
  }) : super(
          type: MentionType.date,
        );

  final String start;
  final String? end;

  factory DateMentionTypeObject.fromJson(Map<String, dynamic> json) {
    return DateMentionTypeObject(
      start: json[_start],
      end: json[_end],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        _start: start,
        _end: end,
      },
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#link-preview-mention-type-object
class LinkPreviewMentionTypeObject extends MentionTypeObject {
  LinkPreviewMentionTypeObject({
    required this.url,
  }) : super(
          type: MentionType.linkPreview,
        );

  final String url;

  factory LinkPreviewMentionTypeObject.fromJson(Map<String, dynamic> json) {
    return LinkPreviewMentionTypeObject(url: json[_url]);
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        _url: url,
      },
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#page-mention-type-object
class PageMentionTypeObject extends MentionTypeObject {
  PageMentionTypeObject({
    required this.id,
  }) : super(
          type: MentionType.page,
        );

  final String id;

  factory PageMentionTypeObject.fromJson(Map<String, dynamic> json) {
    return PageMentionTypeObject(id: json[_id]);
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        _id: id,
      },
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#template-mention-type-object
class TemplateMentionTypeObject extends MentionTypeObject {
  TemplateMentionTypeObject({
    required this.templateMentionDate,
  }) : super(
          type: MentionType.templateMention,
        );

  final MentionDateType templateMentionDate;

  factory TemplateMentionTypeObject.fromJson(Map<String, dynamic> json) {
    final String dateTypeString = json[_templateMentionDate];
    return TemplateMentionTypeObject(
      templateMentionDate: MentionDateType.fromKey(dateTypeString),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        _templateMentionDate: templateMentionDate.key,
      },
    });
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#user-mention-type-object
class UserMentionTypeObject extends MentionTypeObject {
  UserMentionTypeObject({
    required this.user,
  }) : super(
          type: MentionType.user,
        );

  // TODO(Just-gomin): Implements [User] class.
  final Object user;

  factory UserMentionTypeObject.fromJson(Map<String, dynamic> json) {
    return UserMentionTypeObject(
      user: json[_user],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      type.key: {
        // TODO(Just-gomin): Implements [User.toJson()] method.
        _user: user,
      },
    });
    return json;
  }
}
