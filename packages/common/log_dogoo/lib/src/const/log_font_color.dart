///
enum LogFontColor {
  // normal
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,

  // bright
  brightBlack,
  brightRed,
  brightGreen,
  brightYellow,
  brightBlue,
  brightMagenta,
  brightCyan,
  brightWhite,

  none,
}

///
extension LogFontColorExtension on LogFontColor {
  /// [LogFontColor] to ansi code
  String toColorString() {
    String result = '\x1B[';

    switch (this) {
      case LogFontColor.black:
        result += '30m';
      case LogFontColor.red:
        result += '31m';
      case LogFontColor.green:
        result += '32m';
      case LogFontColor.yellow:
        result += '33m';
      case LogFontColor.blue:
        result += '34m';
      case LogFontColor.magenta:
        result += '35m';
      case LogFontColor.cyan:
        result += '36m';
      case LogFontColor.white:
        result += '37m';
      case LogFontColor.brightBlack:
        result += '90m';
      case LogFontColor.brightRed:
        result += '91m';
      case LogFontColor.brightGreen:
        result += '92m';
      case LogFontColor.brightYellow:
        result += '93m';
      case LogFontColor.brightBlue:
        result += '94m';
      case LogFontColor.brightMagenta:
        result += '95m';
      case LogFontColor.brightCyan:
        result += '96m';
      case LogFontColor.brightWhite:
        result += '97m';
      case LogFontColor.none:
        result += '39m';
    }

    return result;
  }
}
