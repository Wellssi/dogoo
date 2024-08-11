import '../core/core.dart';
import '../filters/filters.dart';
import '../formatters/basic_formatter.dart';
import '../levels/levels.dart';
import '../printers/printers.dart';

class Logger {
  factory Logger() => _instance;
  static final Logger _instance = Logger.initiate();
  Logger.initiate();

  LoggerUnit _loggerUnit = LoggerUnit(
    level: traceLevel,
    filter: BasicFilter(),
    formatter: BasicFormatter(),
    printer: ConsolePrinter(),
  );

  void initialize({
    LogLevel? level,
    LogFilter? filter,
    LogFormatter? formatter,
    LogPrinter? printer,
    dynamic Function(LogResult)? printCallback,
  }) {
    _loggerUnit = _loggerUnit.copyWith(
      level: level,
      filter: filter,
      formatter: formatter,
      printer: printer,
      printCallback: printCallback,
    );
  }

  Future<void> log(LogData logData) async {
    await _loggerUnit(logData);
  }

  /// Log of [traceLevel]
  void t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      traceLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [debugLevel]
  void d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      debugLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [infoLevel]
  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      infoLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [warningLevel]
  void w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      warningLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [errorLevel]
  void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      errorLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }

  /// Log of [fatalLevel]
  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final LogData logData = LogData(
      fatalLevel,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
    log(logData);
  }
}
