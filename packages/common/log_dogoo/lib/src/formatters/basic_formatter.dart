import 'package:datetime_dogoo/datetime_dogoo.dart';
import 'package:map_dogoo/map_dogoo.dart';

import '../consts/const.dart';
import '../core/core.dart';

class BasicFormatter implements LogFormatter {
  /// Wheter [LogLevel.name] is printed.
  final bool printLevelName;

  /// Whether [LogData.time] is printed.
  final bool printTime;

  BasicFormatter({
    this.printLevelName = false,
    this.printTime = true,
  });

  @override
  Future<void> init() async {}

  String _makeColoredLine(LogLevel level, String line) {
    String coloredLine = '';

    coloredLine += level.backgroundColor.toColorString();
    coloredLine += level.fontColor.toColorString();
    coloredLine += line;

    return coloredLine += ansiColorEsc;
  }

  String _genHeader(LogData data) {
    final StringBuffer buffer = StringBuffer();

    if (printTime && data.time != null) {
      buffer.write(data.time!.toStringAsFormated());
    }

    String header = data.level.symbol;
    if (printLevelName) header += ' | [${data.level.name}]';

    buffer.write(header);

    return _makeColoredLine(data.level, header);
  }

  String _formatMessage(LogData data) {
    final StringBuffer buffer = StringBuffer('');

    final dynamic message = data.message;

    if (message == null) return buffer.toString();

    final String header = _genHeader(data);

    // TODO(kangmin): JsonStringfy 가능한 타입들 추가
    if (message is Map) {
      final List<String> jsonString = message.toPrettyJsonString().split('\n');
      for (final String line in jsonString) {
        buffer.write(_makeColoredLine(data.level, '$header $line'));
      }
    } else {
      buffer.write(_makeColoredLine(data.level, '$header $message'));
    }

    return buffer.toString();
  }

  String _formatStackTrace(LogData data) {
    // TODO(kangmin): StackTrace 포맷팅
    return '';
  }

  @override
  StringBuffer format(LogData data) {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln(_formatMessage(data));
    buffer.writeln(_formatStackTrace(data));
    buffer.writeln(data.error.toString());

    return buffer;
  }
}
