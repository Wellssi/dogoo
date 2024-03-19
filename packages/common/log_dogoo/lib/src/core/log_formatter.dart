import 'log_data.dart';

abstract class LogFormatter {
  Future<void> init();

  StringBuffer formatMessage(LogData data);
}
