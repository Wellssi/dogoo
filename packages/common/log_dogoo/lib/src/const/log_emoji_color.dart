///
enum LogEmojiColor {
  // Circle
  blackCircle,
  redCircle,
  greenCircle,
  yellowCircle,
  blueCircle,
  magentaCircle,
  whiteCircle,

  // Square
  blackSquare,
  redSquare,
  greenSquare,
  yellowSquare,
  blueSquare,
  magentaSquare,
  whiteSquare,

  // None
  none,
}

///
extension LogEmojiColorExtension on LogEmojiColor {
  /// [LogEmojiColor] to emoji
  String toColorString() {
    String result = '';

    switch (this) {
      case LogEmojiColor.blackCircle:
        result = '⚫️';
      case LogEmojiColor.redCircle:
        result = '🔴';
      case LogEmojiColor.greenCircle:
        result = '🟢';
      case LogEmojiColor.yellowCircle:
        result = '🟡';
      case LogEmojiColor.blueCircle:
        result = '🔵';
      case LogEmojiColor.magentaCircle:
        result = '🟣';
      case LogEmojiColor.whiteCircle:
        result = '⚪️';
      case LogEmojiColor.blackSquare:
        result = '⬛️';
      case LogEmojiColor.redSquare:
        result = '🟥';
      case LogEmojiColor.greenSquare:
        result = '🟩';
      case LogEmojiColor.yellowSquare:
        result = '🟨';
      case LogEmojiColor.blueSquare:
        result = '🟦';
      case LogEmojiColor.magentaSquare:
        result = '🟪';
      case LogEmojiColor.whiteSquare:
        result = '⬜️';
      case LogEmojiColor.none:
        result = '';
    }

    return result;
  }
}
