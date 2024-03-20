import '../consts/colors/colors.dart';

/// LogLevel.
/// You can implement your own log level for filtering.
class LogLevel {
  /// Logging level name.
  final String name;

  /// Logging level value.
  /// This will be used for filtering the log.
  final int value;

  /// Log message color
  final AnsiFontColor fontColor;

  final AnsiBackgroundColor backgroundColor;

  /// Log level
  final String symbol;

  LogLevel({
    required this.name,
    required this.value,
    this.fontColor = AnsiFontColor.none,
    this.backgroundColor = AnsiBackgroundColor.none,
    this.symbol = '',
  });

  /// Generates the copied object of [LogLevel].
  LogLevel copyWith({
    String? name,
    int? value,
    AnsiFontColor? fontColor,
    AnsiBackgroundColor? backgroundColor,
    String? symbol,
  }) {
    return LogLevel(
      name: name ?? this.name,
      value: value ?? this.value,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      symbol: symbol ?? this.symbol,
    );
  }

  bool operator >(covariant LogLevel ol) {
    return value > ol.value;
  }

  bool operator >=(covariant LogLevel ol) {
    return value >= ol.value;
  }

  bool operator <(covariant LogLevel ol) {
    return value < ol.value;
  }

  bool operator <=(covariant LogLevel ol) {
    return value < ol.value;
  }
}
