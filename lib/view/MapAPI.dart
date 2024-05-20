import 'dart:async' show Completer, Future;
import 'dart:async';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_tgdt/view/aboutdescrib.dart';
import 'package:flutter_app_tgdt/view/phone.dart';
import 'package:flutter_app_tgdt/view/polygonsdata.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'location_mark.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key, required String title}) : super(key: key);
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final TextEditingController textEditingController = TextEditingController();
  final FlutterTts flutterTts = FlutterTts();
  List pictureTavel = [
    Image.asset("assets/Aranyik.jpg"),
    Image.asset("assets/yodthong.jpg"),
    Image.asset("assets/Thawee.jpg"),
    Image.asset("assets/Ratchaboorana.jpg"),
    Image.asset("assets/nangpraya.jpg"),
    Image.asset("assets/watyai.jpg"),
    Image.asset("assets/wangchang.jpg"),
    Image.asset("assets/naresuan.jpg"),
  ];

  //CurrentLOcationUser

  LocationData? currentLocation;
  void getcurrentLocation() {
    Location location = Location();
    location.getLocation().then((location) {
      currentLocation = location;
    });
    location.onLocationChanged.listen((newlocation) {
      currentLocation = newlocation;

//เเสดง location เเบบ real time ของ user ทุกๆ 1วิ
      moveToposition(LatLng(
          currentLocation?.latitude ?? 0, currentLocation?.longitude ?? 0));
      setState(() {});
    });
  }

  moveToposition(LatLng latlng) async {
    GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: latlng, zoom: 14, tilt: 30),
    ));
  }

//polylineLOcationWay
  void getPolyline() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyCA4eKjpii4xUG2LrAshYcg87H_gAMsltc",
        const PointLatLng(16.826242716526068, 100.27794695061095),
        const PointLatLng(16.82980453644389, 100.26158360731202),
        travelMode: TravelMode.driving,
        //ส่วนนี้ควรดึงมาจาก database สว่นของ Traveldetail
        wayPoints: [
          PolylineWayPoint(location: "16.824352895284278, 100.26883945823899 "),
          PolylineWayPoint(location: "16.806012769593455, 100.26746093542768 "),
          PolylineWayPoint(location: "16.821517944044025, 100.2610513734338 "),
          PolylineWayPoint(location: "16.82258501911828, 100.26195193083986 "),
          PolylineWayPoint(location: "16.823882635028113, 100.26223901546997 "),
          PolylineWayPoint(location: "16.828540798993743, 100.26207503542773"),
        ]);

    if (result.points.isNotEmpty) {
      for (var pointway in result.points) {
        polylineCoordinates.add(LatLng(pointway.latitude, pointway.longitude));
      }

      setState(() {});
    }
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(16.81370527674195, 100.27008413337965),
    tilt: 20,
    zoom: 14.5,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(16.824068771985303, 100.26228461302482),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Set<Marker> marker = {};
  Set<Polygon> polygon = {};
  List<Marker> listmarker = [];
  List<Polygon> listpolygon = [];
  List<LatLng> polylineCoordinates = [];

  // ignore: annotate_overrides
  void initState() {
    listmarker = Function_location();
    listpolygon = Funtion_polygonpoint();
    getcurrentLocation();
    getPolyline();
    // getMarker();
    super.initState();

    /* getwarringarea(); */
  }

//Marker FentchDataFromeFirebase จุดมาร์คเกอร์
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  void initMarker(specify, specifyId) async {
    var markerIdVal = specifyId;
    final MarkerId markerId = MarkerId(markerIdVal);
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(
          specify['latlngpoint'].latitude, specify['latlngpoint'].longitude),
      infoWindow: InfoWindow(
        title: specify['nameEng'],
      ),
      onTap: () {
        showDialogFungtion(
          context,
          specify['nameEng'],
        );
      },
      icon: BitmapDescriptor.defaultMarker,
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  // getMarker() async {
  //   FirebaseFirestore.instance
  //       .collection('Traveldetail')
  //       .get()
  //       .then((datatravel) {
  //     if (datatravel.docs.isNotEmpty) {
  //       for (int i = 0; i < datatravel.docs.length; i++) {
  //         initMarker(datatravel.docs[i].data(), datatravel.docs[i].id);
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLocation == null
          ? const Center(child: Text("Loading"))
          : Stack(
              children: [
                GoogleMap(
                  markers: Set<Marker>.of(markers.values),
                  onTap: (position) {},
                  polylines: {
                    Polyline(
                      polylineId: const PolylineId("route"),
                      points: polylineCoordinates,
                      startCap: Cap.buttCap,
                      endCap: Cap.buttCap,
                      color: const Color.fromARGB(255, 3, 66, 160),
                      width: 7,
                    ),
                  },
                  polygons: Set<Polygon>.of(listpolygon),
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                //get ShowLocationUser *currentLocation *realtime
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.center, child: _getmarker())),
              ],
            ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: Container(
        child: ExpandableFab(
          distance: 110,
          pos: ExpandableFabPos.left,
          type: ExpandableFabType.up,
          openButtonBuilder: RotateFloatingActionButtonBuilder(
              backgroundColor: const Color.fromARGB(255, 84, 21, 144),
              child: const Text(
                "MENU",
                style: TextStyle(),
              )),
          children: [
            FloatingActionButton.large(
              backgroundColor: const Color.fromARGB(255, 165, 23, 168),
              heroTag: null,
              child: const Icon(
                Icons.phone,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const phonecall()));
              },
            ),
            FloatingActionButton.large(
              backgroundColor: const Color.fromARGB(255, 125, 25, 193),
              heroTag: null,
              child: const Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Describmarker()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

//create MarkUserLocationPoint

  Widget _getmarker() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 251, 189, 4),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 37, 37, 34),
                offset: Offset(3, 3),
                spreadRadius: 4,
                blurRadius: 6)
          ]),
      child: ClipOval(child: Image.asset("assets/Me.jpg")),
    );
  }

  showDialogFungtion(cotext, title) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 249, 249, 249),
                ),
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 50, 49, 49),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
