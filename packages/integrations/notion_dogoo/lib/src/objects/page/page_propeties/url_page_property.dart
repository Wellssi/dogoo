part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#url
class UrlPageProperty extends PageProperty {
  UrlPageProperty({
    required super.id,
    required this.url,
  }) : super(
          type: PagePropertyType.url,
        );

  final String? url;

  factory UrlPageProperty.fromJson(Map<String, dynamic> json) {
    return UrlPageProperty(
      id: json[_id],
      url: json[_url],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    if (url != null) {
      json.addAll({
        _url: url!,
      });
    }
    return json;
  }
}