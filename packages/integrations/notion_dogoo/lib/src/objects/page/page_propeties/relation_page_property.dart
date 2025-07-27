part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#relation
class RelationPageProperty extends PageProperty {
  RelationPageProperty({
    required super.id,
    required this.relation,
    this.hasMore = false,
  }) : super(
          type: PagePropertyType.relation,
        );

  final List<RelationItem> relation;
  final bool hasMore;

  factory RelationPageProperty.fromJson(Map<String, dynamic> json) {
    return RelationPageProperty(
      id: json[_id],
      relation: (json[_relation] as List<dynamic>)
          .map((item) => RelationItem.fromJson(item))
          .toList(),
      hasMore: json[_hasMore],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _relation: relation.map((item) => item.toJson()).toList(),
      _hasMore: hasMore,
    });
    return json;
  }
}

class RelationItem {
  RelationItem({
    required this.id,
  });

  final String id;

  factory RelationItem.fromJson(Map<String, dynamic> json) {
    return RelationItem(
      id: json[_id],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _id: id,
    };
  }
}
