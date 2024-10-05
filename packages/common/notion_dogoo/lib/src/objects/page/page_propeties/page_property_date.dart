part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#date
class PagePropertyDate extends PageProperty {
  PagePropertyDate({
    required super.id,
    required this.start,
    this.end,
  }) : super(
          type: PagePropertyType.date,
        );

  final DateTime start;
  final DateTime? end;

  factory PagePropertyDate.fromJson(Map<String, dynamic> json) {
    return PagePropertyDate(
      id: json[_id],
      start: DateTime.parse(json[_start]),
      end: DateTime.parse(json[_end]),
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    json.addAll({
      _start: start.toIso8601String(),
    });

    if (end != null) {
      json.addAll({
        _end: end!.toIso8601String(),
      });
    }
    return json;
  }
}