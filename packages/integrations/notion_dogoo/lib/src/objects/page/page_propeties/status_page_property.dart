part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#status
class StatusPageProperty extends PageProperty {
  StatusPageProperty({
    required super.id,
    required this.status,
  }) : super(
          type: PagePropertyType.status,
        );

  final StatusOption? status;

  factory StatusPageProperty.fromJson(Map<String, dynamic> json) {
    return StatusPageProperty(
      id: json[_id],
      status:
          json[_status] != null ? StatusOption.fromJson(json[_status]) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    if (status != null) {
      json.addAll({
        _status: status!.toJson(),
      });
    }
    return json;
  }
}

class StatusOption {
  StatusOption({
    required this.id,
    required this.name,
    required this.color,
  });

  final String id;
  final String name;
  final String color;

  factory StatusOption.fromJson(Map<String, dynamic> json) {
    return StatusOption(
      id: json[_id],
      name: json[_name],
      color: json[_color],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _id: id,
      _name: name,
      _color: color,
    };
  }
}
