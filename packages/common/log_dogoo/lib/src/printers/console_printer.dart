// ignore_for_file: avoid_print

import '../core/core.dart';

class ConsolePrinter implements LogPrinter {
  @override
  Future<void> init() async {}

  @override
  Future<LogResult> call(LogPrintData logPrintData) async {
    try {
      logPrintData.formattedMessages.forEach(print);
      return LogResult(
        success: true,
        logData: logPrintData.logData,
        formattedMessages: logPrintData.formattedMessages,
      );
    } catch (e) {
      return LogResult(
        success: false,
        logData: logPrintData.logData,
        formattedMessages: logPrintData.formattedMessages,
        exception: e is Exception ? e : Exception(e.toString()),
      );
    }
  }
}
