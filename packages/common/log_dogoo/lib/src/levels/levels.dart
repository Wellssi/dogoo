import '../consts/const.dart';
import '../core/log_level.dart';

LogLevel traceLevel = LogLevel(
  name: 'TRACE',
  value: 1000,
  symbol: EmojiColor.whiteCircle.value,
);

LogLevel debugLevel = LogLevel(
  name: 'DEBUG',
  value: 2000,
  symbol: EmojiColor.blueCircle.value,
);

LogLevel infoLevel = LogLevel(
  name: 'INFO',
  value: 3000,
  symbol: EmojiColor.greenCircle.value,
);

LogLevel warningLevel = LogLevel(
  name: 'WARNING',
  value: 4000,
  symbol: EmojiColor.yellowCircle.value,
);

LogLevel errorLevel = LogLevel(
  name: 'ERROR',
  value: 5000,
  symbol: EmojiColor.redCircle.value,
);

LogLevel fatalLevel = LogLevel(
  name: 'FATAL',
  value: 6000,
  symbol: EmojiColor.magentaCircle.value,
);

LogLevel noneLevel = LogLevel(
  name: 'NONE',
  value: 9999,
  symbol: EmojiColor.none.value,
);
