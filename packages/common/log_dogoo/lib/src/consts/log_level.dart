/// Logging level.
/// trace < debug < info < warning < error < fatal.
enum LogLevel {
  trace(1000),
  debug(2000),
  info(3000),
  warning(4000),
  error(5000),
  fatal(6000),
  none(9999),
  ;

  /// The loglevel's value.
  final int value;

  const LogLevel(this.value);
}
