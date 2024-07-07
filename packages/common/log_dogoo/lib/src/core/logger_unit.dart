import 'dart:async';

import 'log_data.dart';
import 'log_filter.dart';
import 'log_formatter.dart';
import 'log_level.dart';
import 'log_print_data.dart';
import 'log_printer.dart';
import 'log_result.dart';

class LoggerUnit {
  /// Logger unit's level which extends [LogLevel], or instance of [LogLevel].
  final LogLevel _level;

  /// Logger unit's filter which implements [LogFilter].
  final LogFilter _filter;

  /// Logger unit's formatter which implements [LogFormatter].
  final LogFormatter _formatter;

  /// Logger unit's printer which implements [LogPrinter].
  final LogPrinter _printer;

  /// Future of [LogFilter], [LogFormatter], [LogPrinter] init function.
  late Future<void> _init;

  /// The callback function that runs after the output.
  dynamic Function(LogResult printData)? printCallback;

  LoggerUnit({
    required LogLevel level,
    required LogFilter filter,
    required LogFormatter formatter,
    required LogPrinter printer,
    this.printCallback,
  })  : _level = level,
        _filter = filter,
        _formatter = formatter,
        _printer = printer {
    unawaited(() {
      _init = Future.wait(<Future<void>>[
        _filter.init(),
        _formatter.init(),
        _printer.init(),
      ]);
    }());
  }

  /// get [_init].
  Future<void> get init => _init;

  /// Prints the message with additional info.
  Future<LogResult> call(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) async {
    final LogData logData = LogData(
      _level,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    late LogResult logResult;
    final bool isValid = _filter(logData);

    try {
      if (isValid) {
        final LogPrintData printData = _formatter(logData);
        await _printer(printData);
        logResult = LogResult(
          success: true,
          logData: logData,
          formattedMessages: printData.formattedMessages,
        );
      } else {
        logResult = LogResult(
          success: true,
          filtered: true,
          logData: logData,
        );
      }
    } catch (e) {
      logResult = LogResult(
        success: false,
        logData: logData,
        exception: e is Exception ? e : Exception(e.toString()),
      );
    }

    return logResult;
  }
}
