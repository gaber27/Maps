import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var markers = HashSet<Marker>();
  late BitmapDescriptor customMarker;
  // add cutom icon
  // getCustomMarker() async{
  //   customMarker = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration.empty, //no
  //       'assets/images/');
  // }
  // void initState(){
  //   super.initState();
  //   getCustomMarker();
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('GTG Maps',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        fontSize: 18,
          color: Colors.white
        ),

        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(31.205753,29.924526),
              zoom: 22

            ),
            onMapCreated: (googleMapController){
              setState((){
                markers.add(
                  Marker(markerId:const MarkerId('1'),
                    position: const LatLng(31.0444,31.2357),
                  infoWindow: InfoWindow(
                    title: 'GTG',
                    snippet: 'Share GTG on Social',
                    onTap: (){},


                  ),
                    // icon:
                  ),



                );
              });
            },
            markers: markers,

          ),
        ],
      ),

    );
  }
}
