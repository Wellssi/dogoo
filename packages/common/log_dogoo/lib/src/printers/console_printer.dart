// ignore_for_file: avoid_print

import '../core/core.dart';

class ConsolePrinter implements LogPrinter {
  @override
  Future<void> init() async {}

  @override
  Future<LogPrintData> printout(LogPrintData logPrintData) async {
    logPrintData.formattedMessages.forEach(print);
    return logPrintData;
  }
}
