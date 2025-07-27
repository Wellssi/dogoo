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

enum Color {
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

  const Color({
    required this.key,
  });
  final String key;

  static fromKey(String key) {
    switch (key) {
      case _blue:
        return Color.blue;
      case _blueBackground:
        return Color.blueBackground;
      case _brown:
        return Color.brown;
      case _brownBackground:
        return Color.brownBackground;
      case _default:
        return Color.defaultColor;
      case _gray:
        return Color.gray;
      case _grayBackground:
        return Color.grayBackground;
      case _green:
        return Color.green;
      case _greenBackground:
        return Color.greenBackground;
      case _orange:
        return Color.orange;
      case _orangeBackground:
        return Color.orangeBackground;
      case _yellow:
        return Color.yellow;
      case _yellowBackground:
        return Color.yellowBackground;
      case _pink:
        return Color.pink;
      case _pinkBackground:
        return Color.pinkBackground;
      case _purple:
        return Color.purple;
      case _purpleBackground:
        return Color.purpleBackground;
      case _red:
        return Color.red;
      case _redBackground:
        return Color.redBackground;
      default:
        throw Exception('Invalid color key: $key');
    }
  }
}
