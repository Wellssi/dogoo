const String _database = "database";
const String _date = "date";
const String _linkPreview = "link_preview";
const String _page = "page";
const String _templateMention = "template_mention";
const String _user = "user";

enum MentionType {
  database(key: _database),
  date(key: _date),
  linkPreview(key: _linkPreview),
  page(key: _page),
  templateMention(key: _templateMention),
  user(key: _user),
  ;

  const MentionType({
    required this.key,
  });

  final String key;

  static MentionType fromKey(String key) {
    switch (key) {
      case _database:
        return MentionType.database;
      case _date:
        return MentionType.date;
      case _linkPreview:
        return MentionType.linkPreview;
      case _page:
        return MentionType.page;
      case _templateMention:
        return MentionType.templateMention;
      case _user:
        return MentionType.user;
      default:
        throw ArgumentError('Unknown key: $key');
    }
  }
}
