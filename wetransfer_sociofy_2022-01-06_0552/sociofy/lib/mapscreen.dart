import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_ui/checkout.dart';
import 'package:new_ui/main.dart';
import 'package:new_ui/thankyou.dart';
import 'package:geolocator/geolocator.dart';
import 'package:new_ui/wrong.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as mp;
import 'package:firebase_auth/firebase_auth.dart';
// final _auth = FirebaseAuth.instance;
//
// void getCurrentUser() async {
//   final user = await _auth.currentUser();
// }

class Mapscreen extends StatelessWidget {
  const Mapscreen({Key? key}) : super(key: key);

  void main() {}

  void geolocation() async {}

  // static const longltd = 24.8679 + 67.0835;

  @override
  Widget build(BuildContext context) {
    GoogleMapController googleMapController;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Attendence Screen',
            style: TextStyle(color: Colors.black),
          ),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              mapType: MapType.hybrid,
              onMapCreated: (value) async {
                googleMapController = value;

                Position position = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high);

                googleMapController.animateCamera(
                    CameraUpdate.newCameraPosition(CameraPosition(
                        target: LatLng(position.latitude, position.longitude),
                        zoom: 15)));
              },
              initialCameraPosition:
                  CameraPosition(target: LatLng(24.8679, 67.0835), zoom: 15),
              // markers: Set.from(allMarkers),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: ElevatedButton(
                      onPressed: () async {
                        Position position = await Geolocator.getCurrentPosition(
                            desiredAccuracy: LocationAccuracy.high);
                        print(position);

                        final myCurrentLocation =
                            mp.LatLng(position.latitude, position.longitude);
                        final officeLocation =
                            mp.LatLng(24.86798086818047, 67.08342205320002);

                        final distance =
                            mp.SphericalUtil.computeDistanceBetween(
                                myCurrentLocation, officeLocation);

                        if (distance < 10) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => wrong(),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => wrong(),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text('Clock In'),
                    ),
                    //
                  ),
                ),
                Container(
                  width: 170,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => checkout(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Text('Clock Out'),
                    ),
                  ),
                )
              ],
            ),
            // GestureDetector(
            //   onTap: () async {
            //     Position position = await Geolocator.getCurrentPosition(
            //         desiredAccuracy: LocationAccuracy.high);
            //     print(position);
            //
            //     final myCurrentLocation =
            //         mp.LatLng(position.latitude, position.longitude);
            //     final officeLocation =
            //         mp.LatLng(24.86798086818047, 67.08342205320002);
            //
            //     final distance = mp.SphericalUtil.computeDistanceBetween(
            //         myCurrentLocation, officeLocation);
            //
            //     if (distance < 100) {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => thankyou(),
            //         ),
            //       );
            //     } else {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => wrong(),
            //         ),
            //       );
            //     }
            //   },
            //   child: Padding(
            //     padding: const EdgeInsets.fromLTRB(10, 400, 20, 0),
            //     child: Positioned(
            //       top: 500,
            //       right: 20,
            //       left: 1,
            //       child: SizedBox(
            //         width: 400,
            //         height: 200,
            //         child: Image.asset("images/fingerprint_POSTCARD.jpg"),
            //       ),
            //     ),
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
