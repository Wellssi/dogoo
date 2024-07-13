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
}
