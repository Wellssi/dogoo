import '../../log_dogoo.dart';
import '../consts/const.dart';

/// LogLevel's configuration class.
/// This generates header [String] value of each log messages.
abstract class LogConfig {
  /// Logging level.
  late LogLevel level;

  /// Returns [LogConfig] info [String].
  String header({bool useLevel});

  /// Generates the copy object of [LogConfig].
  LogConfig copyWith({LogLevel level});
}
