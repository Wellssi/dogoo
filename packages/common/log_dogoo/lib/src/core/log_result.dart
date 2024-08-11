import 'log_data.dart';

/// Log result class.
///
/// This class is used to return the result of the log.
class LogResult {
  final bool success;

  /// If the log is filtered, it is set to true.
  final bool filtered;
  final LogData logData;
  final List<String> formattedMessages;
  final Exception? exception;

  LogResult({
    required this.success,
    this.filtered = false,
    required this.logData,
    this.formattedMessages = const <String>[],
    this.exception,
  });
}
