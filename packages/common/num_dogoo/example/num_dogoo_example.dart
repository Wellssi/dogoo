// ignore_for_file: avoid_print

import 'dart:math' as math;

import 'package:num_dogoo/num_dogoo.dart';

void main() {
  final double myPI1 = math.pi.toFixedDouble(1);
  final double myPI2 = math.pi.toFixedDouble(3);

  print(math.pi);
  print('$myPI1, runtimeType: ${myPI1.runtimeType}');
  print('$myPI2, runtimeType: ${myPI2.runtimeType}');

  const double myDouble = -1.23456;
  print(myDouble.toBool());

  const int myInt = 3;
  print(myInt.toBool());
  print(myInt.toStringAsDigits());
  print(myInt.toStringAsDigits(digits: 4));
}
