/// PageProperties
/// - [x] checkbox
/// - [x] created_by
/// - [x] created_time
/// - [x] date
/// - [x] email
/// - [x] files
/// - [x] formula
/// - [x] icon
/// - [x] last_edited_by
/// - [x] last_edited_time
/// - [ ] multi_select
/// - [ ] number
/// - [ ] people
/// - [ ] phone_number
/// - [ ] relation
/// - [ ] rollup
/// - [ ] rich_text
/// - [ ] select
/// - [ ] status
/// - [ ] title
/// - [ ] url
/// - [ ] unique_id
/// - [ ] verification
library;

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
