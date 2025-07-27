part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#last-edited-by
class LastEditedByPageProperty extends PageProperty {
  LastEditedByPageProperty({
    required super.id,
    required this.lastEditedBy,
  }) : super(
          type: PagePropertyType.lastEditedBy,
        );

  final User lastEditedBy;

  factory LastEditedByPageProperty.fromJson(Map<String, dynamic> json) {
    return LastEditedByPageProperty(
      id: json[_id],
      lastEditedBy: User.fromJson(json[_lastEditedBy]),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _lastEditedBy: lastEditedBy.toJson(),
    });
    return json;
  }
}
