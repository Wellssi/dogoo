part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#email
class PagePropertyEmail extends PageProperty {
  PagePropertyEmail({
    required super.id,
    required this.email,
  }) : super(
          type: PagePropertyType.email,
        );

  final String email;

  factory PagePropertyEmail.fromJson(Map<String, dynamic> json) {
    return PagePropertyEmail(
      id: json[_id],
      email: json[_email],
    );
  }

  @override
  Map<String, Object> toJson() {
    final Map<String, Object> json = super.toJson();
    json.addAll({
      _email: email,
    });

    return json;
  }
}
