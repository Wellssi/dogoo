part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#phone-number
class PhoneNumberPageProperty extends PageProperty {
  PhoneNumberPageProperty({
    required super.id,
    required this.phoneNumber,
  }) : super(
          type: PagePropertyType.phoneNumber,
        );

  final String? phoneNumber;

  factory PhoneNumberPageProperty.fromJson(Map<String, dynamic> json) {
    return PhoneNumberPageProperty(
      id: json[_id],
      phoneNumber: json[_phoneNumber],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    if (phoneNumber != null) {
      json.addAll({
        _phoneNumber: phoneNumber!,
      });
    }
    return json;
  }
}
