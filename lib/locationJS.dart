@JS('navigator.geolocation')
library jslocation;

import 'package:js/js.dart';

@JS('getCurrentPosition')
external void getPosition(Function success(GeolocationPosition pos));

@JS()
@anonymous
class GeolocationCoordinates {
  external double get latitude;
  external double get longitude;
  external factory GeolocationCoordinates(
  {double latitude,
  double longitude});
}

@JS()
@anonymous
class GeolocationPosition {
  external GeolocationCoordinates get coords;

  external factory GeolocationPosition({GeolocationCoordinates coords});
}

