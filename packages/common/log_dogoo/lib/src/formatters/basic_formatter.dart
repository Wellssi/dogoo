import 'dart:convert';

import 'package:datetime_dogoo/datetime_dogoo.dart';
import 'package:num_dogoo/num_dogoo.dart';

import '../consts/const.dart';
import '../consts/stack_trace_regexp.dart';
import '../core/core.dart';

class BasicFormatter implements LogFormatter {
  /// Wheter [LogLevel.name] is printed.
  final bool printLevelName;

  /// Whether [LogData.time] is printed.
  final bool printTime;

  /// If [stackFilter] is not null,
  /// then the stakcTrace will be filtered.
  /// Only the string which contains [stackFilter] can be printed.
  final Pattern? stackFilter;

  /// [StackTrace] start number
  ///
  /// For Example)
  /// - #01
  /// - #02
  final int stackStartNumber;

  /// Max count number of [StackTrace].
  final int? maxStackCount;

  BasicFormatter({
    this.printLevelName = false,
    this.printTime = true,
    this.stackFilter,
    this.stackStartNumber = 1,
    this.maxStackCount,
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

  List<String> _formatMessage(LogData data) {
    final List<String> buffer = [];

    final dynamic message = data.message;

    if (message == null) return buffer;

    final String header = _genHeader(data);

    final List<String> finalString = genPrettyJsonString(message).split('\n');
    for (final String line in finalString) {
      buffer.add(_genColoredLine(data.level, '$header $line'));
    }

    return buffer;
  }

  List<String> _formatStackTrace(LogData data) {
    final List<String> buffer = <String>[];

    List<String> stackTraceLines = data.stackTrace!.toString().split('\n');
    int maxCount = maxStackCount ?? stackTraceLines.length;

    for (int i = 0; i < maxCount; i++) {
      String line = stackTraceLines[i];

      if (stackFilter == null ||
          (stackFilter != null && line.contains(stackFilter!))) {
        buffer.add(
          _genColoredLine(
            data.level,
            '#${(i + stackStartNumber).toStringAsDigits()}' +
                ' ' * 2 +
                line.replaceFirst(stackIndexRegex, ''),
          ),
        );
      }
    }

    return buffer;
  }

  List<String> _formatError(LogData data) {
    final List<String> buffer = <String>[];

    List<String> errorLines = data.error.toString().split('\n');
    for (final String line in errorLines) {
      buffer.add(_genColoredLine(data.level, line));
    }

    return buffer;
  }

  @override
  LogPrintData format(LogData data) {
    final List<String> buffer = [];

    buffer.addAll(_formatMessage(data));

    if (data.stackTrace != null) {
      buffer.addAll(_formatStackTrace(data));
    }

    if (data.error != null) {
      buffer.addAll(_formatError(data));
    }

    return LogPrintData(
      origin: data,
      formattedMessages: buffer,
    );
  }
}
