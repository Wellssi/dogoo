library notion_dogoo.objects.blocks.rich_text;

import 'package:notion_dogoo/src/constants/constants.dart';

part 'annotation.dart';
part 'equation_rich_text.dart';
part 'mention_rich_text.dart';
part 'rich_text_key.dart';
part 'text_rich_text.dart';

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
    return RichText(
      type: RichTextType.fromKey(json[_type]),
      annotaions: Annotaion.fromJson(json[_annotations]),
      plainText: json[_plainText],
      href: json[_href],
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
