import '../consts/colors/colors.dart';

/// LogLevel.
/// You can implement your own log level for filtering.
class LogLevel {
  /// Logging level name.
  late String _name;

  /// Logging level value.
  /// This will be used for filtering the log.
  late int _value;

  /// Log message color
  late AnsiFontColor _color;

  /// Log level
  late String _symbol;

  LogLevel({
    required String name,
    required int value,
    AnsiFontColor color = AnsiFontColor.none,
    String symbol = '',
  }) {
    _name = name;
    _value = value;
    _color = color;
    _symbol = symbol;
  }

  String get name => _name;
  int get value => _value;
  AnsiFontColor get color => _color;
  String get symbol => _symbol;

  /// Returns [LogLevel] info [String].
  String header({bool useLevel = false}) {
    return '$_symbol${useLevel ? " | $_name" : ""}';
  }

  /// Generates the copy object of [LogLevel].
  LogLevel copyWith({
    String? name,
    int? level,
    String? symbol,
  }) {
    return LogLevel(
      name: name ?? _name,
      value: level ?? _value,
      symbol: symbol ?? _symbol,
    );
  }

  ///
  bool operator >(covariant LogLevel ol) {
    return _value > ol.value;
  }

  bool operator <(covariant LogLevel ol) {
    return _value < ol.value;
  }
}
