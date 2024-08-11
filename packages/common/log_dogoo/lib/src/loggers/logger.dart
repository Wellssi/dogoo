import '../core/core.dart';
import '../filters/filters.dart';
import '../formatters/basic_formatter.dart';
import '../levels/levels.dart';
import '../printers/printers.dart';

class Logger {
  factory Logger() => _instance;
  static final Logger _instance = Logger.initiate();
  Logger.initiate();

  final BasicFilter defaultFilter = BasicFilter();
  final BasicFormatter defaultFormatter = BasicFormatter();
  final ConsolePrinter defaultPrinter = ConsolePrinter();

  late LoggerUnit traceLoggerUnit = LoggerUnit(
    level: traceLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  late LoggerUnit debugLoggerUnit = LoggerUnit(
    level: debugLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  late LoggerUnit infoLoggerUnit = LoggerUnit(
    level: infoLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  late LoggerUnit warningLoggerUnit = LoggerUnit(
    level: warningLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  late LoggerUnit errorLoggerUnit = LoggerUnit(
    level: errorLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  late LoggerUnit fatalLoggerUnit = LoggerUnit(
    level: fatalLevel,
    filter: defaultFilter,
    formatter: defaultFormatter,
    printer: defaultPrinter,
  );

  void initialize({
    LogFilter? filter,
    LogFormatter? formatter,
    LogPrinter? printer,
    dynamic Function(LogResult)? printCallback,
  }) {
    traceLoggerUnit = traceLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
    );
    debugLoggerUnit = debugLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
    );
    infoLoggerUnit = infoLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
    );
    warningLoggerUnit = warningLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
    );
    errorLoggerUnit = errorLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
    );
    fatalLoggerUnit = fatalLoggerUnit.copyWith(
      filter: filter ?? defaultFilter,
      formatter: formatter ?? defaultFormatter,
      printer: printer ?? defaultPrinter,
      printCallback: printCallback,
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
