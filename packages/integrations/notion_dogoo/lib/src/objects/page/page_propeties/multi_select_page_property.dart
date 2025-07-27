part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#multi-select
class MultiSelectPageProperty extends PageProperty {
  MultiSelectPageProperty({
    required super.id,
    required this.multiSelect,
  }) : super(
          type: PagePropertyType.lastEditedTime,
        );

  final List<MultiSelectPagePropertyValue> multiSelect;

  factory MultiSelectPageProperty.fromJson(Map<String, dynamic> json) {
    return MultiSelectPageProperty(
      id: json[_id],
      multiSelect: (json[_multiSelect] as List<dynamic>)
          .map((e) =>
              MultiSelectPagePropertyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _multiSelect: multiSelect.map((e) => e.toJson()).toList(),
    });
    return json;
  }
}

class MultiSelectPagePropertyValue {
  const MultiSelectPagePropertyValue({
    required this.color,
    required this.id,
    required this.name,
  });

  final NotionColor color;
  final String id;
  final String name;

  factory MultiSelectPagePropertyValue.fromJson(Map<String, dynamic> json) {
    return MultiSelectPagePropertyValue(
      color: NotionColor.fromKey(json[_color]),
      id: json[_id],
      name: json[_name],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, Object>{};
    json.addAll({
      _color: color.key,
      _id: id,
      _name: name,
    });
    return json;
  }
}
