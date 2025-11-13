library notion_dogoo.objects.parent;

part 'block_parent.dart';
part 'database_parent.dart';
part 'page_parent.dart';
part 'workspace_parent.dart';

const String _type = 'type';

// REF: https://developers.notion.com/reference/parent-object
abstract class Parent {
  String get type;
  Map<String, dynamic> toJson();

  static fromJson(Map<String, dynamic> json) {
    if (json[_type] == 'database_id') {
      return DatabaseParent.fromJson(json);
    } else if (json[_type] == 'page_id') {
      return PageParent.fromJson(json);
    } else if (json[_type] == 'block_id') {
      return BlockParent.fromJson(json);
    } else if (json[_type] == 'workspace') {
      return WorkspaceParent.fromJson(json);
    }
  }
}
