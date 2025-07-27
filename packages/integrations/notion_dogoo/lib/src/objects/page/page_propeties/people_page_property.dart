part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#people
class PeoplePageProperty extends PageProperty {
  PeoplePageProperty({
    required super.id,
    required this.people,
  }) : super(
          type: PagePropertyType.people,
        );

  final List<User> people;

  factory PeoplePageProperty.fromJson(Map<String, dynamic> json) {
    return PeoplePageProperty(
      id: json[_id],
      people: (json[_people] as List<dynamic>)
          .map((user) => User.fromJson(user))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({
      _people: people.map((user) => user.toJson()).toList(),
    });
    return json;
  }
}
