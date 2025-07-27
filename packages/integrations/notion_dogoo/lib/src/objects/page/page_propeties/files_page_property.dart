part of 'page_properties.dart';

/// REF: https://developers.notion.com/reference/page-property-values#files
class FilesPageProperty extends PageProperty {
  FilesPageProperty({
    required super.id,
    required this.files,
  }) : super(
          type: PagePropertyType.files,
        );

  final List<File> files;

  factory FilesPageProperty.fromJson(Map<String, dynamic> json) {
    List<File> files = [];

    for (Map<String, dynamic> fileJson in json[_files]) {
      files.add(File.fromJson(fileJson));
    }

    return FilesPageProperty(
      id: json[_id],
      files: files,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = super.toJson();

    json.addAll({
      _files: files.map((file) => file.toJson()).toList(),
    });

    return json;
  }
}
