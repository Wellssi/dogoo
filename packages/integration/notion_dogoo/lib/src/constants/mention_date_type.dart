const String _today = 'today';
const String _now = 'now';

enum MentionDateType {
  today(key: _today),
  now(key: _now),
  ;

  const MentionDateType({
    required this.key,
  });

  final String key;

  static MentionDateType fromKey(String key) {
    switch (key) {
      case _today:
        return MentionDateType.today;
      case _now:
        return MentionDateType.now;
      default:
        throw ArgumentError('Unkown key: $key');
    }
  }
}
