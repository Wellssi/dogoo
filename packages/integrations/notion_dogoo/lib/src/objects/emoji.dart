const String _type = 'type';
const String _emoji = 'emoji';

/// REF: https://developers.notion.com/reference/emoji-object
/// An emoji object is used to represent emoji that is rendered as a page icon in Notion UI.
class Emoji {
  const Emoji({
    required this.emoji,
  });

  final String emoji;

  String get type => 'emoji';

  factory Emoji.fromJson(Map<String, dynamic> json) {
    return Emoji(
      emoji: json[_emoji],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _type: type,
      _emoji: emoji,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Emoji && other.emoji == emoji;
  }

  @override
  int get hashCode => emoji.hashCode;

  @override
  String toString() => 'Emoji(emoji: $emoji)';
}
