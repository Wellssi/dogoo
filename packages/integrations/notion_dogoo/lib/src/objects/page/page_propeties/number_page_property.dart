part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#number
class NumberPageProperty extends PageProperty {
  NumberPageProperty({
    required super.id,
    required this.number,
  }) : super(
          type: PagePropertyType.number,
        );

  final num number;

  factory NumberPageProperty.fromJson(Map<String, dynamic> json) {
    return NumberPageProperty(
      id: json[_id],
      number: json[_number],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _number: number,
    });
    return json;
  }
}
