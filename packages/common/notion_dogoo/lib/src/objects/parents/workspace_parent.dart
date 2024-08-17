part of 'parent.dart';

const String _workspace = 'workspace';

/// Page Parent Object
/// REF: https://developers.notion.com/reference/parent-object#workspace-parent
class WorkspaceParent implements Parent {
  const WorkspaceParent({
    required this.workspace,
  });

  @override
  String get type => _workspace;
  final bool workspace;

  factory WorkspaceParent.fromJson(Map<String, dynamic> json) {
    return WorkspaceParent(
      workspace: json[_workspace],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      _type: type,
      _workspace: workspace,
    };
  }
}
