import 'log_data.dart';

abstract class LogFilter {
  Future<void> init();

  bool isValid(LogData logData);
}
