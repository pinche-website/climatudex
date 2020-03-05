import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/locationJS.dart';
import 'package:js/js.dart';

success(pos) {
  try {
    print(pos.coords.latitude);
    print(pos.coords.longitude);
  } catch (ex) {
    print("Exception thrown : " + ex.toString());
  }
}
getCurrentLocation() async {
  if (kIsWeb) { getPosition(allowInterop((pos) => success(pos)));
  }  }
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getCurrentPosition() async {
double geolocationCoordinates = GeolocationCoordinates( longitude: 12.0, latitude: 13.0 ).latitude;
print(geolocationCoordinates);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getCurrentLocation();
           print('get coords');
            },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}


