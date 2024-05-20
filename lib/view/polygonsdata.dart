import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: non_constant_identifier_names
 Funtion_polygonpoint() {
  Polygon po_1,
      po_2,
      po_3,
      po_5,
      po_6,
      po_7,
      po_8,
      po_9,
      po_10,
      po_11,
      po_12,
      po_20;
  List<Polygon> listpolygon = [];

  /*  ห้างสรรพสินค้าเซ็นทรัลพิษณุโลก */
  po_1 = Polygon(
    polygonId: const PolygonId("1"),
    strokeWidth: 2,
    fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
    strokeColor: const Color.fromARGB(255, 227, 7, 7),
    points: const [
      LatLng(16.841716378907215, 100.23197417123991),
      LatLng(16.841285094559737, 100.23135726319556),
      LatLng(16.839975832485276, 100.23300413945312),
      LatLng(16.839251883685527, 100.23431842180851),
      LatLng(16.839847472970938, 100.23466174454622),
      LatLng(16.841716378907215, 100.23197417123991),
    ],
  );
  listpolygon.add(po_1);

/* ห้างสรรพสินค้าเทสโก้โลตัส (โคกช้าง)  */
  po_3 = Polygon(
      polygonId: const PolygonId("3"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.81953759608209, 100.30019105652178),
        LatLng(16.81743226190342, 100.30050755717086),
        LatLng(16.817293617125447, 100.30140341493963),
        LatLng(16.818382232654383, 100.30134977076185),
        LatLng(16.81845668962014, 100.3022000309795),
        LatLng(16.819565838215574, 100.30217589111938),
        LatLng(16.81953759608209, 100.30019105652178),
      ]);
  listpolygon.add(po_3);

/* ห้างสรรพสินค้าบิ๊กซี */
  po_5 = Polygon(
      polygonId: const PolygonId("5"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.816420968129968, 100.28751210122482),
        LatLng(16.814854954917337, 100.28973109787805),
        LatLng(16.816025301112813, 100.2906143455628),
        LatLng(16.817370565591503, 100.28977895859327),
        LatLng(16.817866186933216, 100.28898708135866),
        LatLng(16.816420968129968, 100.28751210122482)
      ]);
  listpolygon.add(po_5);

/* ห้างสรรพสินค้าท๊อปแลนด์พลาซ่า */
  po_20 = Polygon(
      polygonId: const PolygonId("20"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.795168011866128, 100.23111605402498),
        LatLng(16.792460675700106, 100.2312596362754),
        LatLng(16.792837194961635, 100.23272667231222),
        LatLng(16.794982742851424, 100.23285776914958),
        LatLng(16.795168011866128, 100.23111605402498),
      ]);
  listpolygon.add(po_20);

/* ห้างสรรพสินค้าแม็คโครถนนบรมไตร */
  po_2 = Polygon(
      polygonId: const PolygonId("2"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.82177228553545, 100.26385080830002),
        LatLng(16.82127250463851, 100.26391409581922),
        LatLng(16.821413591245978, 100.26434711569993),
        LatLng(16.82179540136895, 100.26428049725632),
        LatLng(16.82177228553545, 100.26385080830002),
      ]);
  listpolygon.add(po_2);

/* สถานีขนส่งโดยสารจังหวัดพิษณุโลก (ในเมือง) */
  po_6 = Polygon(
      polygonId: const PolygonId("6"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.818969287588697, 100.2787723628016),
        LatLng(16.81819264014917, 100.27861545732272),
        LatLng(16.81811048062254, 100.27919749665155),
        LatLng(16.818801133034665, 100.27933160709597),
        LatLng(16.818969287588697, 100.2787723628016),
      ]);
  listpolygon.add(po_6);

/* สถานีขนส่งโดยสารจังหวัดพิษณุโลก (แยกอินโดจีน) */
  po_7 = Polygon(
      polygonId: const PolygonId("7"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.813218857070662, 100.32981520513259),
        LatLng(16.812119941623422, 100.32983934500504),
        LatLng(16.812107103784623, 100.33018534995063),
        LatLng(16.81267453525664, 100.33030336714174),
        LatLng(16.813188046437354, 100.33030873155951),
        LatLng(16.813218857070662, 100.32981520513259),
      ]);
  listpolygon.add(po_7);

/* ท่าอากาศยานพาณิชย์พิษณุโลก */
  po_8 = Polygon(
      polygonId: const PolygonId("8"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.77308228918163, 100.2810757308076),
        LatLng(16.771952324082896, 100.27936984595449),
        LatLng(16.769846462113858, 100.28091479827428),
        LatLng(16.77104834716815, 100.28276015798959),
        LatLng(16.77308228918163, 100.2810757308076),
      ]);
  listpolygon.add(po_8);

/* สถานีรถไฟพิษณุโลก */
  po_9 = Polygon(
      polygonId: const PolygonId("9"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.815131692418884, 100.26494981492348),
        LatLng(16.814921155161237, 100.26493908608794),
        LatLng(16.814918587632263, 100.26528240882566),
        LatLng(16.814805616322126, 100.26529313766376),
        LatLng(16.81472602285923, 100.26551307879261),
        LatLng(16.815450065388, 100.26552380762817),
        LatLng(16.81546290299655, 100.26522340023266),
        LatLng(16.815136827468653, 100.26521535360403),
        LatLng(16.815131692418884, 100.26494981492348),
      ]);
  listpolygon.add(po_9);

/* ศาลากลางจังหวัดพิษณุโลก */
  po_10 = Polygon(
      polygonId: const PolygonId("10"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.827236447154295, 100.26032053275583),
        LatLng(16.826009244085224, 100.25936030197374),
        LatLng(16.825449554690497, 100.26017032905807),
        LatLng(16.826796144042905, 100.26113726540937),
      ]);
  listpolygon.add(po_10);

/* คลังน้ำมัน ป.ต.ท. */
  po_11 = Polygon(
      polygonId: const PolygonId("11"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.82496808728014, 100.25745283391124),
        LatLng(16.824616354131756, 100.25729056027347),
        LatLng(16.82447899830896, 100.25752391244679),
        LatLng(16.824770397926745, 100.25770496154675),
        LatLng(16.82496808728014, 100.25745283391124),
      ]);
  listpolygon.add(po_11);

/* คลังน้ำมัน พี ที (ตำบลบึงพระ)  */
  po_12 = Polygon(
      polygonId: const PolygonId("12"),
      strokeWidth: 2,
      fillColor: const Color.fromARGB(255, 210, 74, 74).withOpacity(0.2),
      strokeColor: const Color.fromARGB(255, 227, 7, 7),
      points: const [
        LatLng(16.755252631662504, 100.26292207386216),
        LatLng(16.75485197088557, 100.26294353153328),
        LatLng(16.75486738093106, 100.26369455002207),
        LatLng(16.75518071825184, 100.26368918560429),
        LatLng(16.755252631662504, 100.26292207386216),
      ]);
  listpolygon.add(po_12);

  return listpolygon;
}
