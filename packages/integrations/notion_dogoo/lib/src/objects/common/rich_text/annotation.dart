part of 'rich_text.dart';

/// REF: https://developers.notion.com/reference/rich-text#the-annotation-object
class Annotation {
  final bool bold;
  final bool italic;
  final bool strikethrough;
  final bool underline;
  final bool code;
  final NotionColor color;

  Annotation({
    required this.bold,
    required this.italic,
    required this.strikethrough,
    required this.underline,
    required this.code,
    required this.color,
  });

  factory Annotation.fromJson(Map<String, dynamic> json) {
    return Annotation(
      bold: json[_bold],
      italic: json[_italic],
      strikethrough: json[_strikethrough],
      underline: json[_underline],
      code: json[_code],
      color: json[_color],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _bold: bold,
      _italic: italic,
      _strikethrough: strikethrough,
      _underline: underline,
      _code: code,
      _color: color,
    };
  }
}
