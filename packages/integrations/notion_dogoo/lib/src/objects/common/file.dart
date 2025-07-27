import 'package:notion_dogoo/src/constants/constants.dart';

const _type = 'type';
const _url = 'url';
const _expiryTime = 'expiry_time';

/// REF: https://developers.notion.com/reference/file-object
///
/// // Notion-hosted file (uploaded via UI)</br>
/// ```json
/// {
///   "type": "file",
///   "file": {
///     "url": "<https://s3.us-west-2.amazonaws.com/...">,
///     "expiry_time": "2025-04-24T22:49:22.765Z"
///   }
/// }
/// ```
/// // File uploaded via the Notion API</br>
/// ```json
/// {
///   "type": "file_upload",
///   "file_upload": {
///     "id": "43833259-72ae-404e-8441-b6577f3159b4"
///   }
/// }
/// ```
/// // External file</br>
/// ```json
/// {
///   "type": "external",
///   "external": {
///     "url": "<https://example.com/image.png">
///   }
/// }
/// ```
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

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      _type: type.key,
      type.key: {
        _url: url,
        if (expiryTime != null) _expiryTime: expiryTime!.toIso8601String(),
      },
    };
    return json;
  }
}
