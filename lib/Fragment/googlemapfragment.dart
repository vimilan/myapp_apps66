import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}
class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.5937,78.9629),
    zoom: 5.4746,
   );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(22.7196,75.8577),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
/*  Set<Circle> circles = Set.from([Circle(
    circleId: CircleId(id),
    center: LatLng(latitude, longitude),
    radius: 4000,
  )]);*/

/*  GoogleMap(
  mapType: MapType.normal,
  myLocationEnabled: true,
  myLocationButtonEnabled: true,
  initialCameraPosition: initialMapLocation,
  onMapCreated: (GoogleMapController controller) {
  _controller.complete(controller);
  },
  onCameraMove: null,
  circles: circles,
  );*/
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
       onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}