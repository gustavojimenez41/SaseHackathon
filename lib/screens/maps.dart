import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MapSample();
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Circle> _circles = HashSet<Circle>();

  @override
  void initState() {
    super.initState();
    _setCircles();
  }

  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(37.77493, -122.40732),
          radius: 200,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(0.5)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("1"),
          center: LatLng(37.75493, -122.42432),
          radius: 500,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(0.8)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("2"),
          center: LatLng(37.75493, -122.44432),
          radius: 250,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(0.2)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("3"),
          center: LatLng(37.79493, -122.41432),
          radius: 400,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(0.6)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("4"),
          center: LatLng(37.77493, -122.43432),
          radius: 600,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(1.0)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("5"),
          center: LatLng(37.74493, -122.40032),
          radius: 350,
          strokeWidth: 2,
          fillColor: Colors.red[300].withOpacity(0.5)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.77483, -122.41942),
    zoom: 13,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        circles: _circles,
      ),
    );
  }
}
