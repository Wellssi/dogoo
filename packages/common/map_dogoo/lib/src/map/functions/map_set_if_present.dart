Map mapSetIfPresent({
  required Map map,
  required dynamic key,
  dynamic val,
  dynamic defaultVal,
}) {
  if (val != null) {
    map.addAll({key: val});
  } else if (defaultVal != null) {
    map.addAll({key: defaultVal});
  }

  return map;
}
