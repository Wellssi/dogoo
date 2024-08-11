import 'package:log_dogoo/log_dogoo.dart';

Future<void> main() async {
  await Logger().t('trace message');
  await Logger().d('debug message');
  await Logger().i('info message');
  await Logger().w('warning message');
  await Logger().e('error message');
  await Logger().f('fatal message');
}
