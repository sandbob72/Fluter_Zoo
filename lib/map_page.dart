import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map extends StatefulWidget {
  const Map({Key key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(7.844128, 98.357880);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Set<Marker> myMarker(){
    return <Marker>[
      Marker(markerId: MarkerId("Phuket"),position: _center)
    ].toSet();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 35,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "แผนที่สวนสัตว์ PK Zoo",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          markers: myMarker(),
        ),
      ),
    );
  }
}