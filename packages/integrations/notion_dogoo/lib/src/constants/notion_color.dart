const _blue = 'blue';
const _blueBackground = 'blue_background';
const _brown = 'brown';
const _brownBackground = 'brown_background';
const _default = 'default';
const _gray = 'gray';
const _grayBackground = 'gray_background';
const _green = 'green';
const _greenBackground = 'green_background';
const _orange = 'orange';
const _orangeBackground = 'orange_background';
const _yellow = 'yellow';
const _yellowBackground = 'yellow_background';
const _pink = 'pink';
const _pinkBackground = 'pink_background';
const _purple = 'purple';
const _purpleBackground = 'purple_background';
const _red = 'red';
const _redBackground = 'red_background';

enum NotionColor {
  blue(key: _blue),
  blueBackground(key: _blueBackground),
  brown(key: _brown),
  brownBackground(key: _brownBackground),
  defaultColor(key: _default),
  gray(key: _gray),
  grayBackground(key: _grayBackground),
  green(key: _green),
  greenBackground(key: _greenBackground),
  orange(key: _orange),
  orangeBackground(key: _orangeBackground),
  yellow(key: _yellow),
  yellowBackground(key: _yellowBackground),
  pink(key: _pink),
  pinkBackground(key: _pinkBackground),
  purple(key: _purple),
  purpleBackground(key: _purpleBackground),
  red(key: _red),
  redBackground(key: _redBackground);

  const NotionColor({
    required this.key,
  });
  final String key;

  static fromKey(String key) {
    switch (key) {
      case _blue:
        return NotionColor.blue;
      case _blueBackground:
        return NotionColor.blueBackground;
      case _brown:
        return NotionColor.brown;
      case _brownBackground:
        return NotionColor.brownBackground;
      case _default:
        return NotionColor.defaultColor;
      case _gray:
        return NotionColor.gray;
      case _grayBackground:
        return NotionColor.grayBackground;
      case _green:
        return NotionColor.green;
      case _greenBackground:
        return NotionColor.greenBackground;
      case _orange:
        return NotionColor.orange;
      case _orangeBackground:
        return NotionColor.orangeBackground;
      case _yellow:
        return NotionColor.yellow;
      case _yellowBackground:
        return NotionColor.yellowBackground;
      case _pink:
        return NotionColor.pink;
      case _pinkBackground:
        return NotionColor.pinkBackground;
      case _purple:
        return NotionColor.purple;
      case _purpleBackground:
        return NotionColor.purpleBackground;
      case _red:
        return NotionColor.red;
      case _redBackground:
        return NotionColor.redBackground;
      default:
        throw Exception('Invalid color key: $key');
    }
  }
}
