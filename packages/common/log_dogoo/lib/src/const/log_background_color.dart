///
enum LogBackgroundColor {
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
extension LogBackgroundColorExtension on LogBackgroundColor {
  /// [LogBackgroundColor] to ansi code
  String toColorString() {
    String result = '\x1B[';

    switch (this) {
      case LogBackgroundColor.black:
        result += '40m';
      case LogBackgroundColor.red:
        result += '41m';
      case LogBackgroundColor.green:
        result += '42m';
      case LogBackgroundColor.yellow:
        result += '43m';
      case LogBackgroundColor.blue:
        result += '44m';
      case LogBackgroundColor.magenta:
        result += '45m';
      case LogBackgroundColor.cyan:
        result += '46m';
      case LogBackgroundColor.white:
        result += '47m';
      case LogBackgroundColor.brightBlack:
        result += '100m';
      case LogBackgroundColor.brightRed:
        result += '101m';
      case LogBackgroundColor.brightGreen:
        result += '102m';
      case LogBackgroundColor.brightYellow:
        result += '103m';
      case LogBackgroundColor.brightBlue:
        result += '104m';
      case LogBackgroundColor.brightMagenta:
        result += '105m';
      case LogBackgroundColor.brightCyan:
        result += '106m';
      case LogBackgroundColor.brightWhite:
        result += '107m';
      case LogBackgroundColor.none:
        result += '49m';
    }

    return result;
  }
}
