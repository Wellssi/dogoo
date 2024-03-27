import '../core/core.dart';

/// Prints all logs while in development mode.
/// In release mode ALL logs are omitted.
class DevelopModeFilter implements LogFilter {
  @override
  Future<void> init() async {}

  @override
  bool isValid(LogData logData) {
    bool validLog = false;

    assert(() {
      validLog = true;
      return true;
    }(), 'This is Development');

    return validLog;
  }
}
