import 'package:notion_dogoo/src/constants/constants.dart';
import 'package:notion_dogoo/src/objects/objects.dart';

part 'checkbox_page_property.dart';
part 'created_by_page_property.dart';
part 'created_time_page_property.dart';
part 'date_page_property.dart';
part 'email_page_property.dart';
part 'files_page_property.dart';
part 'formula_page_property.dart';
part 'icon_page_property.dart';
part 'last_edited_by_page_property.dart';
part 'last_edited_time_page_property.dart';
part 'multi_select_page_property.dart';
part 'number_page_property.dart';
part 'page_property_key.dart';
part 'page_property.dart';
part 'people_page_property.dart';
part 'phone_number_page_property.dart';
part 'relation_page_property.dart';
part 'rich_text_page_property.dart';
part 'rollup_page_property.dart';
part 'select_page_property.dart';
part 'status_page_property.dart';
part 'title_page_property.dart';
part 'unique_id_page_property.dart';
part 'url_page_property.dart';
part 'verification_page_property.dart';

/// REF: https://developers.notion.com/reference/page-property-values#type-objects
class PageProperties {
  static Map<String, PageProperty> fromJson(Map<String, dynamic> json) {
    Map<String, PageProperty> pageProperties = <String, PageProperty>{};
    for (final String key in json.keys) {
      pageProperties[key] = PageProperty.fromJson(
        json[key] as Map<String, dynamic>,
      );
    }
    return pageProperties;
  }

  static Map<String, dynamic> toJson(
    Map<String, PageProperty> pageProperties,
  ) {
    Map<String, dynamic> json = <String, Object>{};
    for (final String key in pageProperties.keys) {
      json[key] = pageProperties[key]!.toJson();
    }
    return json;
  }
}
