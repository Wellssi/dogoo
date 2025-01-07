part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#type-objects
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
      case PagePropertyType.createdBy:
        return CreatedByPageProperty.fromJson(json);
      case PagePropertyType.createdTime:
        return CreatedTimePageProperty.fromJson(json);
      case PagePropertyType.date:
        return DatePageProperty.fromJson(json);
      case PagePropertyType.email:
        return EmailPageProperty.fromJson(json);
      case PagePropertyType.files:
        return FilesPageProperty.fromJson(json);
      case PagePropertyType.formula:
        return FormulaPageProperty.fromJson(json);
      case PagePropertyType.icon:
        return IconPageProperty.fromJson(json);
      case PagePropertyType.lastEditedBy:
        return LastEditedByPageProperty.fromJson(json);
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
