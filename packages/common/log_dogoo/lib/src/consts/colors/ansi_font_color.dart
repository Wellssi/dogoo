enum AnsiFontColor {
  // Normal Color
  black('30m'),
  red('31m'),
  green('32m'),
  yellow('33m'),
  blue('34m'),
  magenta('35m'),
  cyan('36m'),
  white('37m'),

  // bright Color
  brightBlack('90m'),
  brightRed('91m'),
  brightGreen('92m'),
  brightYellow('93m'),
  brightBlue('94m'),
  brightMagenta('95m'),
  brightCyan('96m'),
  brightWhite('97m'),

  // None
  none('39m'),
  ;

  /// The AnsiFontColor [String] value.
  final String value;

  const AnsiFontColor(this.value);
}
