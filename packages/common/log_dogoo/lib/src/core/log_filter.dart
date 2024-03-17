import 'log_data.dart';

abstract class LogFilter {
  Future<dynamic> init();

  bool isValid(LogData logData);
}
