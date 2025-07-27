part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#verification
class VerificationPageProperty extends PageProperty {
  VerificationPageProperty({
    required super.id,
    required this.verification,
  }) : super(
          type: PagePropertyType.verification,
        );

  final VerificationValue? verification;

  factory VerificationPageProperty.fromJson(Map<String, dynamic> json) {
    return VerificationPageProperty(
      id: json[_id],
      verification: json[_verification] != null
          ? VerificationValue.fromJson(json[_verification])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    if (verification != null) {
      json.addAll({
        _verification: verification!.toJson(),
      });
    }
    return json;
  }
}

class VerificationValue {
  VerificationValue({
    required this.state,
    this.date,
    this.verifiedBy,
  });

  final String state;
  final DateTime? date;
  final User? verifiedBy;

  factory VerificationValue.fromJson(Map<String, dynamic> json) {
    return VerificationValue(
      state: json['state'],
      date: json[_date] != null ? DateTime.parse(json[_date]) : null,
      verifiedBy: json['verified_by'] != null
          ? User.fromJson(json['verified_by'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'state': state,
    };
    if (date != null) json[_date] = date!.toIso8601String();
    if (verifiedBy != null) json['verified_by'] = verifiedBy!.toJson();
    return json;
  }
}
