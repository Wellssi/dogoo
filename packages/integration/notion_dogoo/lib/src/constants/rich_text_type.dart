const String _text = 'text';
const String _mention = 'external';
const String _equation = 'equation';

enum RichTextType {
  text(key: _text),
  mention(key: _mention),
  equation(key: _equation),
  ;

  const RichTextType({
    required this.key,
  });

  final String key;

  static RichTextType fromKey(String key) {
    switch (key) {
      case _text:
        return RichTextType.text;
      case _mention:
        return RichTextType.mention;
      case _equation:
        return RichTextType.equation;
      default:
        throw ArgumentError('Unknown key: $key');
    }
  }
}
