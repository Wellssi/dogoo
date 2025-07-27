part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#title
class TitlePageProperty extends PageProperty {
  TitlePageProperty({
    required super.id,
    required this.title,
  }) : super(
          type: PagePropertyType.title,
        );

  final List<RichText> title;

  factory TitlePageProperty.fromJson(Map<String, dynamic> json) {
    return TitlePageProperty(
      id: json[_id],
      title: (json[_title] as List<dynamic>)
          .map((text) => RichText.fromJson(text))
          .toList(),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _title: title.map((text) => text.toJson()).toList(),
    });
    return json;
  }
}