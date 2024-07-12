import 'parents.dart';

const String _type = 'type';
const String _pageId = 'page_id';

/// Page Parent Object
/// REF: https://developers.notion.com/reference/parent-object#page-parent
class PageParent implements Parent {
  const PageParent({
    required this.pageId,
  });

  @override
  String get type => _pageId;
  final String pageId;

  factory PageParent.fromJson(Map<String, dynamic> json) {
    return PageParent(
      pageId: json[_pageId],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      _type: type,
      _pageId: pageId,
    };
  }
}
