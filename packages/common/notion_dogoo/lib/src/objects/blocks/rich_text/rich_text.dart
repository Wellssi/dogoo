library notion_dogoo.objects.blocks.rich_text;

import 'package:notion_dogoo/src/constants/constants.dart';

part 'rich_text_key.dart';

/// REF: https://developers.notion.com/reference/rich-text
class RichText {
  final RichTextType type;
  final Annotaion annotaions;
  final String plainText;
  final String? href;

  RichText({
    required this.type,
    required this.annotaions,
    required this.plainText,
    this.href,
  });

  factory RichText.fromJson(Map<String, dynamic> json) {
    final RichTextType type = RichTextType.fromKey(json[_type]);
    final Map<String, Object> annotaions = json[type.key][_annotations];
    final String plainText = json[type.key][_plainText];
    final String? href =
        json[type.key].containsKey(_href) ? json[type.key][_href] : null;

    return RichText(
      type: type,
      annotaions: Annotaion.fromJson(annotaions),
      plainText: plainText,
      href: href,
    );
  }

  Map<String, Object> toJson() {
    Map<String, Object> json = {
      _type: type.key,
      type.key: {
        _annotations: annotaions,
        _plainText: plainText,
        if (href != null) _href: href,
      },
    };
    return json;
  }
}

/// REF: https://developers.notion.com/reference/rich-text#the-annotation-object
class Annotaion {
  final bool bold;
  final bool italic;
  final bool strikethrough;
  final bool underline;
  final bool code;
  final Color color;

  Annotaion({
    required this.bold,
    required this.italic,
    required this.strikethrough,
    required this.underline,
    required this.code,
    required this.color,
  });

  factory Annotaion.fromJson(Map<String, dynamic> json) {
    return Annotaion(
      bold: json[_bold],
      italic: json[_italic],
      strikethrough: json[_strikethrough],
      underline: json[_underline],
      code: json[_code],
      color: json[_color],
    );
  }

  Map<String, Object> toJson() {
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
