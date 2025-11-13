const String _checkbox = 'checkbox';
const String _createdBy = 'created_by';
const String _createdTime = 'created_time';
const String _date = 'date';
const String _email = 'email';
const String _files = 'files';
const String _icon = 'icon';
const String _formula = 'formula';
const String _lastEditedBy = 'last_edited_by';
const String _lastEditedTime = 'last_edited_time';
const String _multiSelect = 'multi_select';
const String _number = 'number';
const String _people = 'people';
const String _phoneNumber = 'phone_number';
const String _relation = 'relation';
const String _rollup = 'rollup';
const String _richText = 'rich_text';
const String _select = 'select';
const String _status = 'status';
const String _title = 'title';
const String _url = 'url';
const String _uniqueId = 'unique_id';
const String _verification = 'verification';

/// REF: https://developers.notion.com/reference/page-property-values#type-objects
enum PagePropertyType {
  checkbox(key: _checkbox),
  createdBy(key: _createdBy),
  createdTime(key: _createdTime),
  date(key: _date),
  email(key: _email),
  files(key: _files),
  formula(key: _formula),
  icon(key: _icon),
  lastEditedBy(key: _lastEditedBy),
  lastEditedTime(key: _lastEditedTime),
  multiSelect(key: _multiSelect),
  number(key: _number),
  people(key: _people),
  phoneNumber(key: _phoneNumber),
  relation(key: _relation),
  rollup(key: _rollup),
  richText(key: _richText),
  select(key: _select),
  status(key: _status),
  title(key: _title),
  url(key: _url),
  uniqueId(key: _uniqueId),
  verification(key: _verification),
  ;

  const PagePropertyType({
    required this.key,
  });

  final String key;

  static PagePropertyType fromKey(String key) {
    switch (key) {
      case _checkbox:
        return PagePropertyType.checkbox;
      case _createdBy:
        return PagePropertyType.createdBy;
      case _createdTime:
        return PagePropertyType.createdTime;
      case _date:
        return PagePropertyType.date;
      case _email:
        return PagePropertyType.email;
      case _files:
        return PagePropertyType.files;
      case _formula:
        return PagePropertyType.formula;
      case _icon:
        return PagePropertyType.icon;
      case _lastEditedBy:
        return PagePropertyType.lastEditedBy;
      case _lastEditedTime:
        return PagePropertyType.lastEditedTime;
      case _multiSelect:
        return PagePropertyType.multiSelect;
      case _number:
        return PagePropertyType.number;
      case _people:
        return PagePropertyType.people;
      case _phoneNumber:
        return PagePropertyType.phoneNumber;
      case _relation:
        return PagePropertyType.relation;
      case _rollup:
        return PagePropertyType.rollup;
      case _richText:
        return PagePropertyType.richText;
      case _select:
        return PagePropertyType.select;
      case _status:
        return PagePropertyType.status;
      case _title:
        return PagePropertyType.title;
      case _url:
        return PagePropertyType.url;
      case _uniqueId:
        return PagePropertyType.uniqueId;
      case _verification:
        return PagePropertyType.verification;
      default:
        throw Exception('Invalid page property type');
    }
  }
}
