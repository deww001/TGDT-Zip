import 'dart:math';

import 'package:google_maps_utils/utils/poly_utils.dart';

import '../data/severdata.dart';

class CheckGreenarea {
  //วัดอร้ญญิก
  checkGreenarea_1(Point location_1) {
    bool greenArea_1 =
        PolyUtils.containsLocationPoly(location_1, Areatravel().travel_1);

    return greenArea_1;
  }

  checkGreenarea_2(Point location_2) {
    bool greenArea_2 =
        PolyUtils.containsLocationPoly(location_2, Areatravel().travel_2);

    return greenArea_2;
  }

  checkGreenarea_3(Point location_3) {
    bool greenArea_3 =
        PolyUtils.containsLocationPoly(location_3, Areatravel().travel_3);

    return greenArea_3;
  }

  checkGreenarea_4(Point location_4) {
    bool greenArea_4 =
        PolyUtils.containsLocationPoly(location_4, Areatravel().travel_4);

    return greenArea_4;
  }

  checkGreenarea_5(Point location_5) {
    bool greenArea_5 =
        PolyUtils.containsLocationPoly(location_5, Areatravel().travel_1);

    return greenArea_5;
  }

  checkGreenarea_6(Point location_6) {
    bool greenArea_6 =
        PolyUtils.containsLocationPoly(location_6, Areatravel().travel_6);

    return greenArea_6;
  }

  checkGreenarea_7(Point location_7) {
    bool greenArea_7 =
        PolyUtils.containsLocationPoly(location_7, Areatravel().travel_7);

    return greenArea_7;
  }

  checktestdream_test(Point location_test) {
    bool testArea =
        PolyUtils.containsLocationPoly(location_test, Areatravel().test_test);

    return testArea;
  }

  checktestdream_test2(Point location2) {
    bool testArea2 =
        PolyUtils.containsLocationPoly(location2, Areatravel().test2);
    return testArea2;
  }
}