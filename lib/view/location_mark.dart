import 'package:google_maps_flutter/google_maps_flutter.dart';

Function_location() {
  // ignore: unused_local_variable
  Marker lo_1, lo_2, lo_3, lo_4, lo_5, lo_6, lo_7, lo_8, lo_user;

  List<Marker> listdata = [];

  lo_1 = const Marker(
      markerId: MarkerId("1"),
      infoWindow: InfoWindow(title: 'วัดพระศรีรัตนะมหาธาตุวรมหาวิหาร'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.823882635028113, 100.26223901546997));

  listdata.add(lo_1);

  lo_2 = const Marker(
      markerId: MarkerId('2'),
      infoWindow: InfoWindow(title: "วัดนางพญา"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.82258501911828, 100.26195193083986));
  listdata.add(lo_2);

  lo_3 = const Marker(
      markerId: MarkerId("3"),
      infoWindow: InfoWindow(title: 'วัดราชบูรณะ'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.821517944044025, 100.2610513734338));
  listdata.add(lo_3);

  lo_4 = const Marker(
      markerId: MarkerId("4"),
      infoWindow: InfoWindow(title: 'ศาลสมเด็จพระนเรศวร'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.82980453644389, 100.26158360731202));
  listdata.add(lo_4);

  lo_5 = const Marker(
      markerId: MarkerId("5"),
      infoWindow: InfoWindow(title: 'พิพิธภัณฑ์วังจันทร์'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.828540798993743, 100.26207503542773));
  listdata.add(lo_5);

  lo_6 = const Marker(
      markerId: MarkerId("6"),
      infoWindow: InfoWindow(title: 'พิพิธภัณฑ์พื้นบ้านจ่าทวี'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.806012769593455, 100.26746093542768));
  listdata.add(lo_6);

  lo_7 = const Marker(
      markerId: MarkerId("7"),
      infoWindow: InfoWindow(title: 'วัดเจดีย์ยอดทอง'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.824352895284278, 100.26883945823899));
  listdata.add(lo_7);

  lo_8 = const Marker(
      markerId: MarkerId("8"),
      infoWindow: InfoWindow(title: 'วัดอรัญญิก'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(16.826242716526068, 100.27794695061095));
  listdata.add(lo_8);

  return listdata;
}
