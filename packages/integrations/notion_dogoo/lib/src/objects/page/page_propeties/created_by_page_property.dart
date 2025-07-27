part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#created-by
class CreatedByPageProperty extends PageProperty {
  CreatedByPageProperty({
    required super.id,
    required this.createdBy,
  }) : super(
          type: PagePropertyType.createdBy,
        );

  final User createdBy;

  factory CreatedByPageProperty.fromJson(Map<String, dynamic> json) {
    return CreatedByPageProperty(
      id: json[_id],
      createdBy: User.fromJson(json[_createdBy]),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _createdBy: createdBy.toJson(),
    });
    return json;
  }
}
