import '../consts/const.dart';
import 'log_config.dart';

class BasicLogConfig implements LogConfig {
  @override
  LogLevel level;

  /// Verifier of [level].
  ///
  /// You can use [EmojiColor] or some [String] values.
  /// This will be the header of log string.
  late String _verifier = EmojiColor.none.value;

  BasicLogConfig({
    required this.level,
    required String verifier,
  }) {
    _verifier = verifier;
  }

  /// Generate default [BasicLogConfig].
  factory BasicLogConfig.defaultOption() {
    return BasicLogConfig(
      level: LogLevel.none,
      verifier: EmojiColor.none.value,
    );
  }

  @override
  String header({bool useLevel = false}) {
    return useLevel ? '$_verifier[${level.name}]' : _verifier;
  }

  @override
  BasicLogConfig copyWith({
    LogLevel? level,
    String? verifier,
  }) {
    return BasicLogConfig(
      level: level ?? this.level,
      verifier: verifier ?? _verifier,
    );
  }
}
