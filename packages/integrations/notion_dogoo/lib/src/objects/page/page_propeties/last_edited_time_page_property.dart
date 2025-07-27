part of 'page_properties.dart';

class LastEditedTimePageProperty extends PageProperty {
  LastEditedTimePageProperty({
    required super.id,
    required this.lastEditedTime,
  }) : super(
          type: PagePropertyType.lastEditedTime,
        );

  final DateTime lastEditedTime;

  factory LastEditedTimePageProperty.fromJson(Map<String, dynamic> json) {
    return LastEditedTimePageProperty(
      id: json[_id],
      lastEditedTime: DateTime.parse(
        json[_lastEditedTime],
      ),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _lastEditedTime: lastEditedTime.toIso8601String(),
    });
    return json;
  }
}
