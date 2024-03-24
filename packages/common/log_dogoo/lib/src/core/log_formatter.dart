import 'log_data.dart';
import 'log_print_data.dart';

abstract class LogFormatter {
  Future<void> init();

  /// [List]<[String]> 으로 반환 혹은 [LogPrintData]로 반환
  LogPrintData format(LogData data);
}
