import 'log_level.dart';

/// Log data
class LogData {
  /// Log Level
  LogLevel level;

  /// Log message.
  dynamic message;

  /// The creation time of [LogData].
  DateTime? time;

  Object? error;

  StackTrace? stackTrace;

  LogData(
    this.level,
    this.message, {
    DateTime? time,
    this.error,
    this.stackTrace,
  }) {
    this.time = time ?? DateTime.now();
  }
}
