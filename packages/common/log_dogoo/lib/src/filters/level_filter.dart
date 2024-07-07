import '../core/core.dart';

class LevelFilter extends LogFilter {
  @override
  Future<void> init() async {}

  /// Minimum level to print log.
  LogLevel minLevel;

  LevelFilter({required this.minLevel});

  @override
  bool call(LogData logData) {
    bool validLog = false;

    if (logData.level >= minLevel) {
      validLog = true;
    }

    return validLog;
  }
}
