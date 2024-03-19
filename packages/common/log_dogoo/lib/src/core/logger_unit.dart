import 'dart:async';

import 'log_data.dart';
import 'log_filter.dart';
import 'log_formatter.dart';
import 'log_level.dart';
import 'log_printer.dart';

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

  LoggerUnit({
    required LogLevel level,
    required LogFilter filter,
    required LogFormatter formatter,
    required LogPrinter printer,
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

  /// Prints the message with some  .
  Future<void> log(
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

    final bool isValid = _filter.isValid(logData);
    if (isValid) {
      final StringBuffer buffer = _formatter.formatMessage(logData);
      await _printer.printout(buffer);
    }
  }
}
