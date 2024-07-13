enum BlockType {
  bookmark(key: 'bookmark'),
  breadcrump(key: 'breadcrump'),
  bulletedListItem(key: 'bulleted_list_item'),
  callout(key: 'callout'),
  childDatabase(key: 'child_database'),
  childPage(key: 'childPage'),
  column(key: 'column'),
  columnList(key: 'column_list'),
  divider(key: 'divider'),
  embed(key: 'embed'),
  equation(key: 'equation'),
  file(key: 'file'),
  heading1(key: 'heading1'),
  heading2(key: 'heading2'),
  heading3(key: 'heading3'),
  image(key: 'image'),
  linkPreview(key: 'link_preview'),
  lintToPage(key: 'lint_to_page'),
  numberedListItem(key: 'numbered_list_item'),
  paragraph(key: 'paragraph'),
  pdf(key: 'pdf'),
  quote(key: 'quote'),
  syncedBlock(key: 'synced_block'),
  table(key: 'table'),
  tableOfContents(key: 'table_of_contents'),
  tableRow(key: 'table_row'),
  template(key: 'template'),
  toDo(key: 'to_do'),
  toggle(key: 'toggle'),
  unsupporteed(key: 'unsupporteed'),
  video(key: 'video'),
  ;

  const BlockType({
    required this.key,
  });

  final String key;

  static BlockType fromKey(String key) {
    switch (key) {
      case 'bookmark':
        return BlockType.bookmark;
      case 'breadcrump':
        return BlockType.breadcrump;
      case 'bulleted_list_item':
        return BlockType.bulletedListItem;
      case 'callout':
        return BlockType.callout;
      case 'child_database':
        return BlockType.childDatabase;
      case 'childPage':
        return BlockType.childPage;
      case 'column':
        return BlockType.column;
      case 'column_list':
        return BlockType.columnList;
      case 'divider':
        return BlockType.divider;
      case 'embed':
        return BlockType.embed;
      case 'equation':
        return BlockType.equation;
      case 'file':
        return BlockType.file;
      case 'heading1':
        return BlockType.heading1;
      case 'heading2':
        return BlockType.heading2;
      case 'heading3':
        return BlockType.heading3;
      case 'image':
        return BlockType.image;
      case 'link_preview':
        return BlockType.linkPreview;
      case 'lint_to_page':
        return BlockType.lintToPage;
      case 'numbered_list_item':
        return BlockType.numberedListItem;
      case 'paragraph':
        return BlockType.paragraph;
      case 'pdf':
        return BlockType.pdf;
      case 'quote':
        return BlockType.quote;
      case 'synced_block':
        return BlockType.syncedBlock;
      case 'table':
        return BlockType.table;
      case 'table_of_contents':
        return BlockType.tableOfContents;
      case 'table_row':
        return BlockType.tableRow;
      case 'template':
        return BlockType.template;
      case 'to_do':
        return BlockType.toDo;
      case 'toggle':
        return BlockType.toggle;
      case 'unsupporteed':
        return BlockType.unsupporteed;
      case 'video':
        return BlockType.video;
      default:
        throw Exception('Invalid block type');
    }
  }
}
