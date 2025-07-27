part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#select
class SelectPageProperty extends PageProperty {
  SelectPageProperty({
    required super.id,
    required this.select,
  }) : super(
          type: PagePropertyType.select,
        );

  final SelectOption? select;

  factory SelectPageProperty.fromJson(Map<String, dynamic> json) {
    return SelectPageProperty(
      id: json[_id],
      select:
          json[_select] != null ? SelectOption.fromJson(json[_select]) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    if (select != null) {
      json.addAll({
        _select: select!.toJson(),
      });
    }
    return json;
  }
}

class SelectOption {
  SelectOption({
    required this.id,
    required this.name,
    required this.color,
  });

  final String id;
  final String name;
  final String color;

  factory SelectOption.fromJson(Map<String, dynamic> json) {
    return SelectOption(
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
