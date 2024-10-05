part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#checkbox
class PagePropertyCheckbox extends PageProperty {
  PagePropertyCheckbox({
    required super.id,
    required this.checkbox,
  }) : super(
          type: PagePropertyType.checkbox,
        );

  final bool checkbox;

  factory PagePropertyCheckbox.fromJson(Map<String, dynamic> json) {
    return PagePropertyCheckbox(
      id: json[_id],
      checkbox: json[_checkbox],
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _checkbox: checkbox,
    });
    return json;
  }
}
