part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#unique-id
class UniqueIdPageProperty extends PageProperty {
  UniqueIdPageProperty({
    required super.id,
    required this.uniqueId,
  }) : super(
          type: PagePropertyType.uniqueId,
        );

  final UniqueIdValue uniqueId;

  factory UniqueIdPageProperty.fromJson(Map<String, dynamic> json) {
    return UniqueIdPageProperty(
      id: json[_id],
      uniqueId: UniqueIdValue.fromJson(json[_uniqueId]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _uniqueId: uniqueId.toJson(),
    });
    return json;
  }
}

class UniqueIdValue {
  UniqueIdValue({
    required this.number,
    this.prefix,
  });

  final int number;
  final String? prefix;

  factory UniqueIdValue.fromJson(Map<String, dynamic> json) {
    return UniqueIdValue(
      number: json[_number],
      prefix: json[_prefix],
    );
  }

  Map<String, Object> toJson() {
    Map<String, Object> json = {
      _number: number,
    };
    if (prefix != null) json[_prefix] = prefix!;
    return json;
  }
}