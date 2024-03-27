import '../core/core.dart';
import '../levels/levels.dart';
import 'develop_mode_filter.dart';
import 'level_filter.dart';

class BasicFilter implements LogFilter {
  late final LogLevel leastLevel;

  final DevelopModeFilter _developModeFilter = DevelopModeFilter();
  late final LevelFilter _levelFilter;

  BasicFilter({
    LogLevel? leastLevel,
  }) : leastLevel = leastLevel ?? traceLevel {
    _levelFilter = LevelFilter(minLevel: traceLevel);
  }

  @override
  Future<void> init() async {}

  @override
  bool isValid(LogData logData) {
    final bool isDevMode = _developModeFilter.isValid(logData);
    final bool isValidLevel = _levelFilter.isValid(logData);
    return isDevMode && isValidLevel;
  }
}
