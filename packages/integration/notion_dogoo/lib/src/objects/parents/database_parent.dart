part of 'parent.dart';

const String _databaseId = 'database_id';

/// Database Parent Object
/// - REF: https://developers.notion.com/reference/parent-object#database-parent
class DatabaseParent implements Parent {
  const DatabaseParent({
    required this.databaseId,
  });

  @override
  String get type => _databaseId;
  final String databaseId;

  factory DatabaseParent.fromJson(Map<String, dynamic> json) {
    return DatabaseParent(
      databaseId: json[_databaseId],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      _type: type,
      _databaseId: databaseId,
    };
  }
}
