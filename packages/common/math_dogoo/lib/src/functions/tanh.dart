import 'cosh.dart';
import 'sinh.dart';

double tanh(num x) {
  return sinh(x) / cosh(x);
}
