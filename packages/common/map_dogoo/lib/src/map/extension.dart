import 'package:map_dogoo/src/map/functions/functions.dart';

extension MapDogooExtension on Map {
  setIfPresent({required dynamic key, dynamic val, dynamic defaultVal}) {
    return mapSetIfPresent(map: this, key: key);
  }

  getIfPresent(dynamic key, {dynamic defaultValue}) {
    return mapGetIfPresent(this, key, defaultValue: defaultValue);
  }
}
