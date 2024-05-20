import 'dart:math';
import 'package:flutter_app_tgdt/view/ToldmassenService.dart';
import 'package:flutter_app_tgdt/data/severdata.dart';
import 'package:google_maps_utils/utils/poly_utils.dart';
import 'package:location/location.dart';

class Sendtoast {
  static getlocayionWarring() async {
    LocationData? currentLocation;
    Location location = Location();
    Point checklocationpoint;

    location.onLocationChanged.listen((newLocation) async {
      currentLocation = newLocation;
      checklocationpoint = Point(
          currentLocation?.latitude ?? 0, currentLocation?.longitude ?? 0);
      if (GetcheckWarring().checkwarringArea_1(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_2(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_3(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_4(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_5(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_6(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_7(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_8(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_9(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_10(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_11(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_12(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
      if (GetcheckWarring().checkwarringArea_13(checklocationpoint) == true) {
        Toast().showToastwarring();
      }
    });
  }
}

class GetcheckWarring {
  checkwarringArea_1(Point pointArea1) {
    // ignore: dead_code

    bool warring_1 =
        PolyUtils.containsLocationPoly(pointArea1, WarringArea().datawarring_1);
    return warring_1;
  }

  checkwarringArea_2(Point pointArea2) {
    bool warring_2 =
        PolyUtils.containsLocationPoly(pointArea2, WarringArea().datawarring_2);
    return warring_2;
  }

  checkwarringArea_3(Point pointArea3) {
    bool warring_3 =
        PolyUtils.containsLocationPoly(pointArea3, WarringArea().datawarring_3);
    return warring_3;
  }

  checkwarringArea_4(Point pointArea4) {
    bool warring_4 =
        PolyUtils.containsLocationPoly(pointArea4, WarringArea().datawarring_4);
    return warring_4;
  }

  checkwarringArea_5(Point pointArea5) {
    bool warring_5 =
        PolyUtils.containsLocationPoly(pointArea5, WarringArea().datawarring_5);
    return warring_5;
  }

  checkwarringArea_6(Point pointArea6) {
    bool warring_6 =
        PolyUtils.containsLocationPoly(pointArea6, WarringArea().datawarring_6);
    return warring_6;
  }

  checkwarringArea_7(Point pointArea7) {
    bool warring_7 =
        PolyUtils.containsLocationPoly(pointArea7, WarringArea().datawarring_7);
    return warring_7;
  }

  checkwarringArea_8(Point pointArea8) {
    bool warring_8 =
        PolyUtils.containsLocationPoly(pointArea8, WarringArea().datawarring_8);
    return warring_8;
  }

  checkwarringArea_9(Point pointArea9) {
    bool warring_9 =
        PolyUtils.containsLocationPoly(pointArea9, WarringArea().datawarring_9);
    return warring_9;
  }

  checkwarringArea_10(Point pointArea10) {
    bool warring_10 = PolyUtils.containsLocationPoly(
        pointArea10, WarringArea().datawarring_10);
    return warring_10;
  }

  checkwarringArea_11(Point pointArea11) {
    bool warring_11 = PolyUtils.containsLocationPoly(
        pointArea11, WarringArea().datawarring_11);
    return warring_11;
  }

  checkwarringArea_12(Point pointArea12) {
    bool warring_12 = PolyUtils.containsLocationPoly(
        pointArea12, WarringArea().datawarring_12);
    return warring_12;
  }

  checkwarringArea_13(Point pointArea13) {
    bool warring_13 = PolyUtils.containsLocationPoly(
        pointArea13, WarringArea().datawarring_13);
    return warring_13;
  }
}
