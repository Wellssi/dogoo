import '../core/core.dart';
import '../filters/filters.dart';
import '../formatters/basic_formatter.dart';
import '../levels/levels.dart';
import '../printers/printers.dart';

class Logger {
  factory Logger() => _instance;
  static final Logger _instance = Logger.initiate();
  Logger.initiate();

  LogFilter _filter = BasicFilter();
  LogFormatter _formatter = BasicFormatter();
  LogPrinter _printer = ConsolePrinter();

  late LoggerUnit traceLoggerUnit = LoggerUnit(
    level: traceLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  late LoggerUnit debugLoggerUnit = LoggerUnit(
    level: debugLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  late LoggerUnit infoLoggerUnit = LoggerUnit(
    level: infoLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  late LoggerUnit warningLoggerUnit = LoggerUnit(
    level: warningLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  late LoggerUnit errorLoggerUnit = LoggerUnit(
    level: errorLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  late LoggerUnit fatalLoggerUnit = LoggerUnit(
    level: fatalLevel,
    filter: _filter,
    formatter: _formatter,
    printer: _printer,
  );

  void initialize({
    LogFilter? filter,
    LogFormatter? formatter,
    LogPrinter? printer,
    dynamic Function(LogResult)? printCallback,
  }) {
    _filter = filter ?? _filter;
    _formatter = formatter ?? _formatter;
    _printer = printer ?? _printer;

    traceLoggerUnit = traceLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
    debugLoggerUnit = debugLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
    infoLoggerUnit = infoLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
    warningLoggerUnit = warningLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
    errorLoggerUnit = errorLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
    fatalLoggerUnit = fatalLoggerUnit.copyWith(
      filter: filter ?? _filter,
      formatter: formatter ?? _formatter,
      printer: printer ?? _printer,
      printCallback: printCallback,
    );
  }

  Future<LogResult> call(
    dynamic message, {
    LogLevel? level,
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) async {
    return LoggerUnit(
      level: level ?? traceLevel,
      filter: _filter,
      formatter: _formatter,
      printer: _printer,
    )(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [traceLevel]
  Future<LogResult> t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return traceLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [debugLevel]
  Future<LogResult> d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return debugLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [infoLevel]
  Future<LogResult> i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return infoLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [warningLevel]
  Future<LogResult> w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return warningLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [errorLevel]
  Future<LogResult> e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return errorLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log of [fatalLevel]
  Future<LogResult> f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return fatalLoggerUnit(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
