// ignore_for_file: avoid_print

import 'dart:math' as math;

import 'package:num_dogoo/num_dogoo.dart';

void main() {
  final double myPI1 = math.pi.toFixedDouble(1);
  final double myPI2 = math.pi.toFixedDouble(3);

  print(math.pi); // 3.141592653589793
  print('$myPI1, runtimeType: ${myPI1.runtimeType}'); // 3.1, runtimeType: double
  print('$myPI2, runtimeType: ${myPI2.runtimeType}'); // 3.141, runtimeType: double

  const double myDouble = -1.23456;
  print(myDouble.toBool()); // true

  const int myInt = 3;
  print(myInt.toBool()); // true
  print(myInt.toStringAsDigits()); // 03
  print(myInt.toStringAsDigits(digits: 4)); // 0003
}
