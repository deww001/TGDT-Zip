import 'dart:math';

import 'package:location/location.dart';

import '../view/ToldmassenService.dart';
import 'CheckGreenAreaController.dart';

class SendtoastGreenArea {
  bool check_1 = false;
  bool check_2 = false;
  bool check_3 = false;
  bool check_4 = false;
  bool check_5 = false;
  bool check_6 = false;
  bool check_7 = false;
  bool check_8 = false;
  bool check_test = false;
  getlocationGreenArea() {
    LocationData? currentlocation;
    Location locationgreen = Location();
    Point greenpoint;

    locationgreen.onLocationChanged.listen((newlocation) {
      currentlocation = newlocation;
      greenpoint = Point(
          currentlocation?.latitude ?? 0, currentlocation?.longitude ?? 0);
      if (CheckGreenarea().checkGreenarea_1(greenpoint) == true) {
        check_1 = true;
        Toast().showToastgreen_1();
      }
      if (CheckGreenarea().checkGreenarea_2(greenpoint) == true) {
        check_2 = true;
        Toast().showToastgreen_2();
      }
      if (CheckGreenarea().checkGreenarea_3(greenpoint) == true) {
        check_3 = true;
        Toast().showToastgreen_3();
      }
      if (CheckGreenarea().checkGreenarea_4(greenpoint) == true) {
        check_4 = true;
        Toast().showToastgreen_4();
      }
      if (CheckGreenarea().checkGreenarea_5(greenpoint) == true) {
        check_5 = true;
        Toast().showToastgreen_5();
      }
      if (CheckGreenarea().checkGreenarea_6(greenpoint) == true) {
        check_6 = true;
        Toast().showToastgreen_6();
      }
      if (CheckGreenarea().checkGreenarea_7(greenpoint) == true) {
        check_7 = true;
        Toast().showToastgreen_7();
      }
      if (CheckGreenarea().checktestdream_test(greenpoint) == true) {
        check_8 = true;
        Toast().showToastgreen_test();
      }
      if (CheckGreenarea().checktestdream_test2(greenpoint) == true) {
        check_test = true;
        Toast().showToastgreen_7();
      }
    });
  }
}
