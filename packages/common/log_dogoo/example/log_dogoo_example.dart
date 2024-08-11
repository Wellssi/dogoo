import 'package:log_dogoo/log_dogoo.dart';

Future<void> main() async {
  await Logger().t('trace message');
  await Logger().d('debug message');
  await Logger().i('info message');
  await Logger().w('warning message');
  await Logger().e('error message');
  await Logger().f('fatal message');

  await Logger()('', level: noneLevel);

  await Logger()(
    'just message without level will be printed as trace level log',
  );
  await Logger()('debug message2', level: debugLevel);
  await Logger()('info message2', level: infoLevel);
  await Logger()('warning message2', level: warningLevel);
  await Logger()('error message2', level: errorLevel);
  await Logger()('fatal message2', level: fatalLevel);
}
