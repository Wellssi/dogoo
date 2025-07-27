part of 'rich_text.dart';

/// REF: https://developers.notion.com/reference/rich-text#equation
class EquationRichText extends RichText {
  EquationRichText({
    required super.annotaions,
    required super.plainText,
    super.href,
    required this.expression,
  }) : super(
          type: RichTextType.equation,
        );

  final String expression;

  factory EquationRichText.fromJson(Map<String, dynamic> json) {
    return EquationRichText(
      annotaions: Annotaion.fromJson(json[_annotations]),
      plainText: json[_plainText],
      expression: json[RichTextType.equation.key][_expression],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      RichTextType.equation.key: {
        _expression: expression,
      },
    });
    return json;
  }
}
