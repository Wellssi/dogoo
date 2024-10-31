import 'package:notion_dogoo/src/constants/constants.dart';
import 'package:notion_dogoo/src/objects/objects.dart';

part 'checkbox_page_property.dart';
part 'files_page_property.dart';
part 'page_property_created_by.dart';
part 'page_property_created_time.dart';
part 'page_property_date.dart';
part 'page_property_email.dart';
part 'page_property_key.dart';
part 'page_property.dart';

/// REF: https://developers.notion.com/reference/page-property-values#type-objects
class PageProperties {
  static Map<String, PageProperty> fromJson(Map<String, Object> json) {
    Map<String, PageProperty> pageProperties = <String, PageProperty>{};
    for (final String key in json.keys) {
      pageProperties[key] = PageProperty.fromJson(
        json[key] as Map<String, dynamic>,
      );
    }
    return pageProperties;
  }

  static Map<String, Object> toJson(
    Map<String, PageProperty> pageProperties,
  ) {
    Map<String, Object> json = <String, Object>{};
    for (final String key in pageProperties.keys) {
      json[key] = pageProperties[key]!.toJson();
    }
    return json;
  }
}
