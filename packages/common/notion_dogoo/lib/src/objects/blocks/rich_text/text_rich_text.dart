part of 'rich_text.dart';

class TextRichText extends RichText {
  TextRichText({
    required super.annotaions,
    required super.plainText,
    required this.content,
    this.link,
  }) : super(
          type: RichTextType.text,
        );

  final String content;
  // TODO(Just-gomin): Implements [Link] Object.
  final Object? link;

  factory TextRichText.fromJson(Map<String, dynamic> json) {
    return TextRichText(
      annotaions: Annotaion.fromJson(json[_annotations]),
      plainText: json[_plainText],
      content: json[_content],
      // TODO(Just-gomin): Implements [Link.fromJson] constructor.
      link: json[_link],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      type.key: {
        _content: content,
        // TODO(Just-gomin): add optional property. Implements [Link.toJson] method.
        _link: link,
      },
    });
    return json;
  }
}
