import 'core/core.dart';
import 'levels/levels.dart';

class Logger {
  Logger();

  void _log(LogLevel logConfig, LogData logData) {}

  /// Log of [traceLevel]
  void t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}

  /// Log of [debugLevel]
  void d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}

  /// Log of [infoLevel]
  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}

  /// Log of [warningLevel]
  void w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}

  /// Log of [errorLevel]
  void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}

  /// Log of [fatalLevel]
  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {}
}
