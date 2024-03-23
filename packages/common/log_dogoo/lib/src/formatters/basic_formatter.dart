import 'dart:convert';

import 'package:datetime_dogoo/datetime_dogoo.dart';

import '../consts/const.dart';
import '../consts/stack_trace_regexp.dart';
import '../core/core.dart';

class BasicFormatter implements LogFormatter {
  /// Wheter [LogLevel.name] is printed.
  final bool printLevelName;

  /// Whether [LogData.time] is printed.
  final bool printTime;

  /// If [stackFilterKeyword] is not null,
  /// then the stakcTrace will be filtered.
  /// Only the string which contains [stackFilterKeyword] can be printed.
  final String? stackFilterKeyword;

  BasicFormatter({
    this.printLevelName = false,
    this.printTime = true,
    this.stackFilterKeyword,
  });

  @override
  Future<void> init() async {}

  /// If [obj]'s type is [Map] or [Iterable],
  /// then return prettyJson.
  /// If [obj]'s type is not [Map] or [Iterable],
  /// then return [obj.toString()].
  String genPrettyJsonString(
    dynamic obj, {
    int indentSize = 2,
  }) {
    String result = '';
    final JsonEncoder encoder = JsonEncoder.withIndent(' ' * indentSize);

    if (obj is Map || obj is Iterable) {
      result = encoder.convert(obj);
    } else {
      result = obj.toString();
    }

    return result;
  }

  String _genColoredLine(LogLevel level, String line) {
    String coloredLine = '';

    coloredLine += level.backgroundColor.toColorString();
    coloredLine += level.fontColor.toColorString();
    coloredLine += line;

    return coloredLine += ansiColorEsc;
  }

  /// Message의 Header 생성
  ///
  /// ex)
  ///   2024/03/21 12:36:39 🔵
  ///   2024/03/21 12:36:39 🔵 | TRACE
  String _genHeader(LogData data) {
    final StringBuffer buffer = StringBuffer();

    if (printTime && data.time != null) {
      buffer.write(data.time!.toStringAsFormated());
    }

    String header = data.level.symbol;
    if (printLevelName) header += ' | [${data.level.name}]';

    buffer.write(' $header');

    return _genColoredLine(data.level, header);
  }

  String _formatMessage(LogData data) {
    final StringBuffer buffer = StringBuffer('');

    final dynamic message = data.message;

    if (message == null) return buffer.toString();

    final String header = _genHeader(data);

    final List<String> finalString = genPrettyJsonString(message).split('\n');
    for (final String line in finalString) {
      buffer.write(_genColoredLine(data.level, '$header $line'));
    }

    return buffer.toString();
  }

  String _formatStackTrace(LogData data) {
    final StringBuffer buffer = StringBuffer();

    for (final String line in data.stackTrace!.toString().split('\n')) {
      buffer.writeln(
        _genColoredLine(data.level, line.replaceFirst(stackIndexRegex, '')),
      );
    }

    return buffer.toString();
  }

  @override
  StringBuffer format(LogData data) {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln(_formatMessage(data));

    if (data.stackTrace != null) {
      buffer.writeln(_formatStackTrace(data));
    }

    if (data.error != null) {
      buffer.writeln(data.error.toString());
    }

    return buffer;
  }
}
