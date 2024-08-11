import '../core/core.dart';

class EmptyFilter implements LogFilter {
  @override
  Future<void> init() async {}

  @override
  bool call(LogData logData) {
    return true;
  }
}
