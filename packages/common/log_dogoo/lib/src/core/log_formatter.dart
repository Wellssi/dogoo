import 'log_data.dart';

abstract class LogFormatter {
  dynamic init();

  StringBuffer formatMessage(LogData data);
}
