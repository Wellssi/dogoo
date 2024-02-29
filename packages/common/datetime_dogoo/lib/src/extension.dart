import 'package:datetime_dogoo/datetime_dogoo.dart';

extension DatetimeDogooExtension on DateTime {
  String toStringAsFormated({DateTimeStringFormat? format}) {
    return format != null ? dateTimeToStringAsFormated(this, format: format) : dateTimeToStringAsFormated(this);
  }
}
