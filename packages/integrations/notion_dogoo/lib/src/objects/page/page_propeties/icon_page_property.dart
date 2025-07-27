part of 'page_properties.dart';

class IconPageProperty extends PageProperty {
  IconPageProperty({
    required super.id,
    required this.iconType,
    this.emoji,
    this.file,
  }) : super(
          type: PagePropertyType.icon,
        );

  final String iconType; // emoji, file
  final String? emoji;
  final File? file;

  factory IconPageProperty.fromJson(Map<String, dynamic> json) {
    final String iconType = json[_type];
    String? emoji;
    File? file;

    if (iconType == _emoji) {
      emoji = json[iconType];
    }
    if (iconType == _file) {
      file = File.fromJson(json[iconType]);
    }

    return IconPageProperty(
      id: json[_id],
      iconType: iconType,
      emoji: emoji,
      file: file,
    );
  }

  @override
  Map<String, Object> toJson() {
    Map<String, Object> json = super.toJson();
    Map<String, Object> iconJson = {_type: iconType};
    if (iconType == _emoji) {
      iconJson.addAll({
        _emoji: emoji!,
      });
    }
    if (iconType == _file) {
      iconJson.addAll(file!.toJson());
    }
    json.addAll({_icon: iconJson});
    return json;
  }
}
