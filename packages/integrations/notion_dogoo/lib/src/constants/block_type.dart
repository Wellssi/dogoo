const String _bookmark = 'bookmark';
const String _breadcrumb = 'breadcrumb';
const String _bulletedListItem = 'bulleted_list_item';
const String _callout = 'callout';
const String _childDatabase = 'child_database';
const String _childPage = 'child_page';
const String _code = 'code';
const String _column = 'column';
const String _columnList = 'column_list';
const String _divider = 'divider';
const String _embed = 'embed';
const String _equation = 'equation';
const String _file = 'file';
const String _heading1 = 'heading_1';
const String _heading2 = 'heading_2';
const String _heading3 = 'heading_3';
const String _image = 'image';
const String _linkPreview = 'link_preview';
const String _mention = 'mention';
const String _numberedListItem = 'numbered_list_item';
const String _paragraph = 'paragraph';
const String _pdf = 'pdf';
const String _quote = 'quote';
const String _syncedBlock = 'synced_block';
const String _table = 'table';
const String _tableOfContents = 'table_of_contents';
const String _tableRow = 'table_row';
const String _template = 'template';
const String _toDo = 'to_do';
const String _toggle = 'toggle';
const String _unsupported = 'unsupported';
const String _video = 'video';

enum BlockType {
  bookmark(key: _bookmark),
  breadcrumb(key: _breadcrumb),
  bulletedListItem(key: _bulletedListItem),
  callout(key: _callout),
  childDatabase(key: _childDatabase),
  childPage(key: _childPage),
  code(key: _code),
  column(key: _column),
  columnList(key: _columnList),
  divider(key: _divider),
  embed(key: _embed),
  equation(key: _equation),
  file(key: _file),
  heading1(key: _heading1),
  heading2(key: _heading2),
  heading3(key: _heading3),
  image(key: _image),
  linkPreview(key: _linkPreview),
  mention(key: _mention),
  numberedListItem(key: _numberedListItem),
  paragraph(key: _paragraph),
  pdf(key: _pdf),
  quote(key: _quote),
  syncedBlock(key: _syncedBlock),
  table(key: _table),
  tableOfContents(key: _tableOfContents),
  tableRow(key: _tableRow),
  template(key: _template),
  toDo(key: _toDo),
  toggle(key: _toggle),
  unsupported(key: _unsupported),
  video(key: _video),
  ;

  const BlockType({
    required this.key,
  });

  final String key;

  static BlockType fromKey(String key) {
    switch (key) {
      case _bookmark:
        return BlockType.bookmark;
      case _breadcrumb:
        return BlockType.breadcrumb;
      case _bulletedListItem:
        return BlockType.bulletedListItem;
      case _callout:
        return BlockType.callout;
      case _childDatabase:
        return BlockType.childDatabase;
      case _childPage:
        return BlockType.childPage;
      case _code:
        return BlockType.code;
      case _column:
        return BlockType.column;
      case _columnList:
        return BlockType.columnList;
      case _divider:
        return BlockType.divider;
      case _embed:
        return BlockType.embed;
      case _equation:
        return BlockType.equation;
      case _file:
        return BlockType.file;
      case _heading1:
        return BlockType.heading1;
      case _heading2:
        return BlockType.heading2;
      case _heading3:
        return BlockType.heading3;
      case _image:
        return BlockType.image;
      case _linkPreview:
        return BlockType.linkPreview;
      case _mention:
        return BlockType.mention;
      case _numberedListItem:
        return BlockType.numberedListItem;
      case _paragraph:
        return BlockType.paragraph;
      case _pdf:
        return BlockType.pdf;
      case _quote:
        return BlockType.quote;
      case _syncedBlock:
        return BlockType.syncedBlock;
      case _table:
        return BlockType.table;
      case _tableOfContents:
        return BlockType.tableOfContents;
      case _tableRow:
        return BlockType.tableRow;
      case _template:
        return BlockType.template;
      case _toDo:
        return BlockType.toDo;
      case _toggle:
        return BlockType.toggle;
      case _unsupported:
        return BlockType.unsupported;
      case _video:
        return BlockType.video;
      default:
        throw Exception('Invalid block type');
    }
  }
}
