import 'package:notion_dogoo/src/constants/constants.dart';

const _type = 'type';
const _url = 'url';
const _expiryTime = 'expiry_time';

/// REF: https://developers.notion.com/reference/file-object
class File {
  const File({
    required this.type,
    required this.url,
    required this.expiryTime,
  });

  final FileType type;
  final String url;
  final DateTime? expiryTime;

  factory File.fromJson(Map<String, dynamic> json) {
    final FileType type = FileType.fromKey(json[_type]);
    final String url = json[type.key][_url];
    DateTime? expiryTime;

    if (json[type.key].containsKey(_expiryTime)) {
      expiryTime = DateTime.parse(json[type.key][_expiryTime]);
    }

    return File(
      type: type,
      url: url,
      expiryTime: expiryTime,
    );
  }

  Map<String, Object> toJson() {
    Map<String, Object> json = {
      _type: type.key,
      type.key: {
        _url: url,
        if (expiryTime != null) _expiryTime: expiryTime!.toIso8601String(),
      },
    };
    return json;
  }
}
