This is part of the [dogoo](https://github.com/Wellssi/dogoo) package that provides `Dart` and `Flutter` utilities.

Log Dogoo is logging tool.

## Features

The default [Logger](./lib/src/loggers/logger.dart) is available.
You can modify [Logger](./lib/src/loggers/logger.dart) by changing some Filter, Formatter, Printer.
Alternatively, you can implement [LogFilter](./lib/src/core/log_filter.dart), [LogFormatter](./lib/src/core/log_formatter.dart), [LogPrinter](./lib/src/core/log_printer.dart) and place them all in [LoggerUnit](./lib/src/core/logger_unit.dart) to build your own logger.

## Usage

```dart
  await Logger().t('trace message'); // ⚪️ trace message
  await Logger().d('debug message'); // 🔵 debug message
  await Logger().i('info message'); // 🟢 info message
  await Logger().w('warning message'); // 🟡 warning message
  await Logger().e('error message'); // 🔴 error message
  await Logger().f('fatal message'); // 🟣 fatal message
```

## ToDo

- [ ] File Output
- [ ] Daily Rotate File(Like [winston-daily-rotate-file](https://www.npmjs.com/package/winston-daily-rotate-file))
- [ ] Send to Slack
