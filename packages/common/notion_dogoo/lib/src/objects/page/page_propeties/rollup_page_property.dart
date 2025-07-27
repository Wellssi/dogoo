part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#rollup
class RollupPageProperty extends PageProperty {
  RollupPageProperty({
    required super.id,
    required this.rollup,
  }) : super(
          type: PagePropertyType.rollup,
        );

  final RollupValue rollup;

  factory RollupPageProperty.fromJson(Map<String, dynamic> json) {
    return RollupPageProperty(
      id: json[_id],
      rollup: RollupValue.fromJson(json[_rollup]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _rollup: rollup.toJson(),
    });
    return json;
  }
}

class RollupValue {
  RollupValue({
    required this.type,
    required this.function,
    this.number,
    this.date,
    this.array,
  });

  final String type;
  final String function;
  final num? number;
  final DateTime? date;
  final List<dynamic>? array;

  factory RollupValue.fromJson(Map<String, dynamic> json) {
    return RollupValue(
      type: json[_type],
      function: json[_function],
      number: json[_number],
      date: json[_date] != null ? DateTime.parse(json[_date]) : null,
      array: json['array'],
    );
  }

  Map<String, Object> toJson() {
    Map<String, Object> json = {
      _type: type,
      _function: function,
    };
    if (number != null) json[_number] = number!;
    if (date != null) json[_date] = date!.toIso8601String();
    if (array != null) json['array'] = array!;
    return json;
  }
}