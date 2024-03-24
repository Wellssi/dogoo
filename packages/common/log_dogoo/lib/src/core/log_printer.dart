import 'log_print_data.dart';

abstract class LogPrinter {
  Future<void> init();

  Future<LogPrintData> printout(LogPrintData logPrintData);
}
