import 'ansi_color.dart';

enum AnsiBackgroundColor {
  // Normal Color
  black('40m'),
  red('41m'),
  green('42m'),
  yellow('43m'),
  blue('44m'),
  magenta('45m'),
  cyan('46m'),
  white('47m'),

  // bright Color
  brightBlack('100m'),
  brightRed('101m'),
  brightGreen('102m'),
  brightYellow('103m'),
  brightBlue('104m'),
  brightMagenta('105m'),
  brightCyan('106m'),
  brightWhite('107m'),

  // None
  none('49m'),
  ;

  /// The AnsiBackgroundColor [String] value.
  final String value;

  const AnsiBackgroundColor(this.value);

  String toColorString() {
    return ansiColorPrefix + value;
  }
}
