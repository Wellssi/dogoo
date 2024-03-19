import '../core/core.dart';
import '../levels/levels.dart';
import 'level_filter.dart';
import 'only_develop_mode_filter.dart';

class BasicFilter implements LogFilter {
  final OnlyDevelopModeFilter _onlyDevelopModeFilter = OnlyDevelopModeFilter();
  final LevelFilter _levelFilter = LevelFilter(minLevel: traceLevel);

  @override
  Future<void> init() async {}

  @override
  bool isValid(LogData logData) {
    final bool isDevMode = _onlyDevelopModeFilter.isValid(logData);
    final bool isValidLevel = _levelFilter.isValid(logData);
    return isDevMode && isValidLevel;
  }
}
