enum EmojiColor {
  // Circle
  blackCircle('⚫️'),
  redCircle('🔴'),
  greenCircle('🟢'),
  yellowCircle('🟡'),
  blueCircle('🔵'),
  magentaCircle('🟣'),
  whiteCircle('⚪️'),

  // Square
  blackSquare('⬛️'),
  redSquare('🟥'),
  greenSquare('🟩'),
  yellowSquare('🟨'),
  blueSquare('🟦'),
  magentaSquare('🟪'),
  whiteSquare('⬜️'),

  // Heart
  blackHeart('🖤'),
  redHeart('❤️'), // VSCode는 이모지 형태가 아닌 특수문자로 보일 수 있음
  greenHeart('💚'),
  yellowHeart('💛'),
  blueHeart('💙'),
  magentaHeart('💜'),
  whiteHeart('🤍'),

  // None
  none(''),
  ;

  /// The EmojiColor [String] value.
  final String value;

  const EmojiColor(this.value);
}
