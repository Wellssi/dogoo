part of 'page_properties.dart';

class CheckboxPageProperty extends PageProperty {
  CheckboxPageProperty({
    required super.id,
    required this.checkbox,
  }) : super(
          type: PagePropertyType.checkbox,
        );

  final bool checkbox;

  factory CheckboxPageProperty.fromJson(Map<String, dynamic> json) {
    return CheckboxPageProperty(
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
