part of 'page_properties.dart';

class PageProperty {
  PageProperty({
    required this.id,
    required this.type,
  });

  final String id;
  final PagePropertyType type;

  factory PageProperty.fromJson(Map<String, dynamic> json) {
    return PageProperty(
      id: json[_id],
      type: PagePropertyType.fromKey(json[_type]),
    );
  }

  Map<String, Object> toJson() {
    return {
      _id: id,
      _type: type.key,
    };
  }
}
