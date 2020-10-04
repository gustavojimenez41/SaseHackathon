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
          center: LatLng(37.76493, -122.42432),
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
          fillColor: Colors.red[300].withOpacity(0.5)),
      // fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("2"),
          center: LatLng(37.75493, -122.43432),
          radius: 250,
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
