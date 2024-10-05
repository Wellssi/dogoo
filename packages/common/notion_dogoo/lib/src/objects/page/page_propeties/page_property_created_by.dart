part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#created-by
class PagePropertyCreatedBy extends PageProperty {
  PagePropertyCreatedBy({
    required super.id,
    required this.createdBy,
  }) : super(
          type: PagePropertyType.createdBy,
        );

  final User createdBy;

  factory PagePropertyCreatedBy.fromJson(Map<String, dynamic> json) {
    return PagePropertyCreatedBy(
      id: json[_id],
      createdBy: User.fromJson(json[_createdBy]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _createdBy: createdBy.toJson(),
    });
    return json;
  }
}
