import 'log_print_data.dart';
import 'log_result.dart';

abstract class LogPrinter {
  Future<void> init();

  Future<LogResult> call(LogPrintData logPrintData);
}
