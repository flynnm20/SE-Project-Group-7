import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  @override

  State<StatefulWidget> createState() {
    return MyAppState();
  }
}






class MyAppState extends State<HomePage> {
  final Map<String, Marker> _markers = {};
  GoogleMapController mapController;

  final LatLng _center = const LatLng(53.3498, -6.2603);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;


  }

updateLocation() async{

  var currentLocation = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  mapController.animateCamera(
    CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(currentLocation.latitude, currentLocation.longitude), zoom: 15.0),
    ),
  );
  setState(() {
    _markers.clear();
    final marker = Marker(
      markerId: MarkerId("curr_loc"),
      position: LatLng(currentLocation.latitude, currentLocation.longitude),
      infoWindow: InfoWindow(title: 'Your Location'),

    );
    _markers["Current Location"] = marker;

  });

}


  void _getLocation() async {

    var currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setState(() {
      _markers.clear();
      CameraPosition(
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 11.0,
      );
      final marker = Marker(
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'Your Location'),

      );
      _markers["Current Location"] = marker;

    });
  }




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
       /* floatingActionButton: FloatingActionButton(
          onPressed: _getLocation,
          tooltip: 'Get Location',
          child: Icon(Icons.flag),
        ),*/
        floatingActionButton:

        FloatingActionButton(
            child: Icon(Icons.location_on),
            onPressed: () {
          updateLocation();
        }

        ),

        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 0.0,
          ),

          markers: _markers.values.toSet(),
        ),

      ),
    );
  }}