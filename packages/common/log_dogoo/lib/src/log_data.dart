/// Log data
class LogData {
  /// Log message.
  dynamic message;

  /// The creation time of [LogData].
  DateTime? time;

  Object? error;

  StackTrace? stackTrace;

  LogData(
    this.message, {
    DateTime? time,
    this.error,
    this.stackTrace,
  }) {
    this.time = time ?? DateTime.now();
  }
}
