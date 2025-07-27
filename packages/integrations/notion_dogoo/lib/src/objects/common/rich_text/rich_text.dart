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
  final Annotation annotations;
  final String plainText;
  final String? href;

  RichText({
    required this.type,
    required this.annotations,
    required this.plainText,
    this.href,
  });

  factory RichText.fromJson(Map<String, dynamic> json) {
    return RichText(
      type: RichTextType.fromKey(json[_type]),
      annotations: Annotation.fromJson(json[_annotations]),
      plainText: json[_plainText],
      href: json[_href],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      _type: type.key,
      type.key: {
        _annotations: annotations,
        _plainText: plainText,
        if (href != null) _href: href,
      },
    };
    return json;
  }
}
