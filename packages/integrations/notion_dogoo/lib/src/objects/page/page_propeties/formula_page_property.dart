part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#formula
class FormulaPageProperty extends PageProperty {
  FormulaPageProperty({
    required super.id,
    required this.formulaType,
    this.boolean,
    this.date,
    this.number,
    this.string,
  }) : super(
          type: PagePropertyType.formula,
        );

  final String formulaType;
  final bool? boolean;
  final DateTime? date;
  final num? number;
  final String? string;

  factory FormulaPageProperty.fromJson(Map<String, dynamic> json) {
    final String formulaType = json[_type];

    return FormulaPageProperty(
      id: json[_id],
      formulaType: formulaType,
      boolean: json[formulaType] is bool ? json[formulaType] : null,
      date: DateTime.tryParse(json[formulaType]) != null
          ? DateTime.parse(json[formulaType])
          : null,
      number: json[formulaType] is num ? json[formulaType] : null,
      string: json[formulaType] is String ? json[formulaType] : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    Map<String, dynamic> formulaJson = {
      _formula: {
        _type: formulaType,
      },
    };

    if (boolean != null) {
      formulaJson.addAll({_boolean: boolean!});
    }
    if (date != null) {
      formulaJson.addAll({_date: date!.toIso8601String()});
    }
    if (number != null) {
      formulaJson.addAll({_number: number!});
    }
    if (string != null) {
      formulaJson.addAll({_string: string!});
    }

    json.addAll(formulaJson);

    return json;
  }
}
