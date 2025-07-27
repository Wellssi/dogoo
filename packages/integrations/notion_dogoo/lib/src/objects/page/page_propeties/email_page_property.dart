part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#email
class EmailPageProperty extends PageProperty {
  EmailPageProperty({
    required super.id,
    required this.email,
  }) : super(
          type: PagePropertyType.email,
        );

  final String email;

  factory EmailPageProperty.fromJson(Map<String, dynamic> json) {
    return EmailPageProperty(
      id: json[_id],
      email: json[_email],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = super.toJson();
    json.addAll({
      _email: email,
    });

    return json;
  }
}
