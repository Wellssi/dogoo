part of 'page_properties.dart';

// REF: https://developers.notion.com/reference/page-property-values#created-time
class CreatedTimePageProperty extends PageProperty {
  CreatedTimePageProperty({
    required super.id,
    required this.createdTime,
  }) : super(
          type: PagePropertyType.createdTime,
        );

  final DateTime createdTime;

  factory CreatedTimePageProperty.fromJson(Map<String, dynamic> json) {
    return CreatedTimePageProperty(
      id: json[_id],
      createdTime: DateTime.parse(json[_createdTime]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _createdTime: createdTime.toIso8601String(),
    });
    return json;
  }
}
