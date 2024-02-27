extension BoolDogooExtension on bool {
  int toInt() {
    return this ? 1 : 0;
  }

  double toDouble() {
    return this ? 1.0 : 0.0;
  }

  num toNum() {
    return toDouble();
  }
}
