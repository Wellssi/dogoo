import '../consts/const.dart';
import '../core/log_level.dart';

LogLevel traceLevel = LogLevel(
  name: 'TRACE',
  value: 1000,
  symbol: EmojiColor.whiteCircle.value,
  fontColor: AnsiFontColor.white,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel debugLevel = LogLevel(
  name: 'DEBUG',
  value: 2000,
  symbol: EmojiColor.blueCircle.value,
  fontColor: AnsiFontColor.blue,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel infoLevel = LogLevel(
  name: 'INFO',
  value: 3000,
  symbol: EmojiColor.greenCircle.value,
  fontColor: AnsiFontColor.green,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel warningLevel = LogLevel(
  name: 'WARNING',
  value: 4000,
  symbol: EmojiColor.yellowCircle.value,
  fontColor: AnsiFontColor.yellow,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel errorLevel = LogLevel(
  name: 'ERROR',
  value: 5000,
  symbol: EmojiColor.redCircle.value,
  fontColor: AnsiFontColor.red,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel fatalLevel = LogLevel(
  name: 'FATAL',
  value: 6000,
  symbol: EmojiColor.magentaCircle.value,
  fontColor: AnsiFontColor.magenta,
  backgroundColor: AnsiBackgroundColor.none,
);

LogLevel noneLevel = LogLevel(
  name: 'NONE',
  value: 9999,
  symbol: EmojiColor.none.value,
  fontColor: AnsiFontColor.none,
  backgroundColor: AnsiBackgroundColor.none,
);
