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
      case PagePropertyType.lastEditedTime:
        return LastEditedTimePageProperty.fromJson(json);
      case PagePropertyType.multiSelect:
        return MultiSelectPageProperty.fromJson(json);
      case PagePropertyType.number:
        return NumberPageProperty.fromJson(json);
      case PagePropertyType.people:
        return PeoplePageProperty.fromJson(json);
      case PagePropertyType.phoneNumber:
        return PhoneNumberPageProperty.fromJson(json);
      case PagePropertyType.relation:
        return RelationPageProperty.fromJson(json);
      case PagePropertyType.richText:
        return RichTextPageProperty.fromJson(json);
      case PagePropertyType.rollup:
        return RollupPageProperty.fromJson(json);
      case PagePropertyType.select:
        return SelectPageProperty.fromJson(json);
      case PagePropertyType.status:
        return StatusPageProperty.fromJson(json);
      case PagePropertyType.title:
        return TitlePageProperty.fromJson(json);
      case PagePropertyType.uniqueId:
        return UniqueIdPageProperty.fromJson(json);
      case PagePropertyType.url:
        return UrlPageProperty.fromJson(json);
      case PagePropertyType.verification:
        return VerificationPageProperty.fromJson(json);
    }
  }

  Map<String, Object> toJson() {
    return {
      _id: id,
      _type: type.key,
    };
  }
}
