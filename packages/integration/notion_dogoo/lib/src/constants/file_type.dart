const String _file = 'file';
const String _external = 'external';

enum FileType {
  file(key: _file),
  external(key: _external),
  ;

  const FileType({
    required this.key,
  });

  final String key;

  static FileType fromKey(String key) {
    switch (key) {
      case _file:
        return FileType.file;
      case _external:
        return FileType.external;
      default:
        throw ArgumentError('Unknown key: $key');
    }
  }
}
