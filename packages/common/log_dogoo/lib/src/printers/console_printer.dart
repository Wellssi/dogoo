import 'package:log_dogoo/src/core/core.dart';

class ConsolePrinter implements LogPrinter {
  @override
  Future<void> init() async {}

  @override
  Future<LogPrintData> printout(LogPrintData logPrintData) async {
    logPrintData.formattedMessages.forEach(print);
    return logPrintData;
  }
}
