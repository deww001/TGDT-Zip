
import 'dart:math';

import 'package:google_maps_utils/utils/spherical_utils.dart';

import '../data/severdata.dart';

class CheckpointRate {
   bool checkArea_1(Point distance_1) {
    double minDistance = double.infinity;
    for (Point vertex in Areatravel().travel_1) {
      double distance =
          SphericalUtils.computeDistanceBetween(distance_1, vertex);
      if (distance < minDistance) {
        minDistance = distance;
      }
    }
    return minDistance <= 100;
  }

  bool checkArea_2(Point distance_2) {
    double minDistance2 = double.infinity;
    for (Point vertex in Areatravel().travel_2) {
      double distance2 =
          SphericalUtils.computeDistanceBetween(distance_2, vertex);
      if (distance2 < minDistance2) {
        minDistance2 = distance2;
      }
    }
    return minDistance2 <= 100;
  }

  bool checkArea_3(Point distance_3) {
    double minDistance3 = double.infinity;
    for (Point vertex in Areatravel().travel_3) {
      double distance3 =
          SphericalUtils.computeDistanceBetween(distance_3, vertex);
      if (distance3 < minDistance3) {
        minDistance3 = distance3;
      }
    }
    return minDistance3 <= 100;
  }

  bool checkArea_4(Point distance_4) {
    double minDistance4 = double.infinity;
    for (Point vertex in Areatravel().travel_4) {
      double distance4 =
          SphericalUtils.computeDistanceBetween(distance_4, vertex);
      if (distance4 < minDistance4) {
        minDistance4 = distance4;
      }
    }
    return minDistance4 <= 100;
  }

  bool checkArea_5(Point distance_5) {
    double minDistance5 = double.infinity;
    for (Point vertex in Areatravel().travel_1) {
      double distance5 =
          SphericalUtils.computeDistanceBetween(distance_5, vertex);
      if (distance5 < minDistance5) {
        minDistance5 = distance5;
      }
    }
    return minDistance5 <= 100;
  }

  bool checkArea_6(Point distance_6) {
    double minDistance6 = double.infinity;
    for (Point vertex in Areatravel().travel_6) {
      double distance6 =
          SphericalUtils.computeDistanceBetween(distance_6, vertex);
      if (distance6 < minDistance6) {
        minDistance6 = distance6;
      }
    }
    return minDistance6 <= 100;
  }

  bool checkArea_7(Point distance_7) {
    double minDistance7 = double.infinity;
    for (Point vertex in Areatravel().travel_7) {
      double distance7 =
          SphericalUtils.computeDistanceBetween(distance_7, vertex);
      if (distance7 < minDistance7) {
        minDistance7 = distance7;
      }
    }
    return minDistance7 <= 100;
  }

  bool checkArea_Test(Point distance_Test) {
    double minDistance7 = double.infinity;
    for (Point vertex in Areatravel().test_test) {
      double distance7 =
          SphericalUtils.computeDistanceBetween(distance_Test, vertex);
      if (distance7 < minDistance7) {
        minDistance7 = distance7;
      }
    }
    return minDistance7 <= 100 ||
        minDistance7 <= 200 ||
        minDistance7 <= 400 ||
        minDistance7 <= 0;
  }
}