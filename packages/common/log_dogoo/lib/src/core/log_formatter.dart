import 'log_data.dart';
import 'log_print_data.dart';

abstract class LogFormatter {
  Future<void> init();
  LogPrintData call(LogData data);
}
