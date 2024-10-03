part of 'page_properties.dart';

class PageProperty {
  PageProperty({
    required this.id,
    required this.type,
  });

  final String id;
  final PagePropertyType type;

  factory PageProperty.fromJson(Map<String, dynamic> json) {
    PagePropertyType type = PagePropertyType.fromKey(json[_type]);

    switch (type) {
      case PagePropertyType.checkbox:
        return CheckboxPageProperty.fromJson(json);
      default:
        return PageProperty(
          id: json[_id],
          type: type,
        );
    }
  }

  Map<String, Object> toJson() {
    return {
      _id: id,
      _type: type.key,
    };
  }
}
