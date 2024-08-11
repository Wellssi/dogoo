import 'core/core.dart';
import 'levels/levels.dart';

class Logger {
  final LogLevel leastLevel;

  Logger({
    LogLevel? leastLevel,
  }) : leastLevel = leastLevel ?? traceLevel;

  void log(LogData logData) {}

  /// Log of [traceLevel]
  void t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      traceLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [debugLevel]
  void d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      debugLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [infoLevel]
  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      infoLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [warningLevel]
  void w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      warningLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [errorLevel]
  void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      errorLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [fatalLevel]
  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      fatalLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }
}
