part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#rich-text
class RichTextPageProperty extends PageProperty {
  RichTextPageProperty({
    required super.id,
    required this.richText,
  }) : super(
          type: PagePropertyType.richText,
        );

  final List<RichText> richText;

  factory RichTextPageProperty.fromJson(Map<String, dynamic> json) {
    return RichTextPageProperty(
      id: json[_id],
      richText: (json[_richText] as List<dynamic>)
          .map((text) => RichText.fromJson(text))
          .toList(),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _richText: richText.map((text) => text.toJson()).toList(),
    });
    return json;
  }
}