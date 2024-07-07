import 'log_level.dart';

/// Log data
class LogData {
  /// Log Level
  LogLevel level;

  /// Log message.
  // TODO(kangmin): LogMessage 클래스 생성해서 message의 header와 body, tail 만들기
  dynamic message;

  /// The creation time of [LogData].
  /// default is [DateTime.now()]
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
