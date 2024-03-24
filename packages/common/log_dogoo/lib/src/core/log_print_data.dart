import 'package:log_dogoo/src/core/log_data.dart';

class LogPrintData {
  LogData origin;
  List<String> formattedMessages;

  LogPrintData({
    required this.origin,
    required this.formattedMessages,
  });
}
