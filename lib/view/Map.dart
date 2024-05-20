// ignore_for_file: avoid_print

import 'dart:collection';
import 'dart:core';
import 'dart:math';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_tgdt/Controller/LanguageController.dart';
import 'package:flutter_app_tgdt/view/checkAreawarring.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:location/location.dart';
import '../Controller/CheckGreenAreaController.dart';
import '../Controller/CheckpointRateController.dart';
import '../Controller/ToastGreenAreaController.dart';
import 'MapAPI.dart';

class HomeMapScreen extends StatefulWidget {
  const HomeMapScreen({Key? key}) : super(key: key);
  @override
  State<HomeMapScreen> createState() => _HomeMapScreen();
}

class _HomeMapScreen extends State<HomeMapScreen> {
  List<String> items = ['Thailand', 'English', 'Chinese'];
  String? selectItem = 'Thailand';
  Queue<String> tssqueue = Queue<String>();
  String? texttospeech;
  /* bool isPanelOpen = false; */

  bool checklocationTrue = false;
  LocationData? currentLocation;
  bool isSpeakin = false;
  bool isCheckinkTravel_1 = false;
  bool isCheckinkTravel_2 = false;
  bool isCheckinkTravel_3 = false;
  bool isCheckinkTravel_4 = false;
  bool isCheckinkTravel_5 = false;
  bool isCheckinkTravel_6 = false;
  bool isCheckinkTravel_7 = false;
  bool isCheckinkTravel_8 = false;
  bool isTest = false;

//คำเเนะนำตัวของไกด์ เมื่อคลิกเลือกไกด์

//set funtion ไว้ให้มีการรับค่าตลอดเวลา
  void initStat() {
    super.initState();
    //getTextChi();
    //getTextEng();
    // getTextThai();

    // ignore: unused_local_variable
    String? texttospeech;
    selectItem;
    _volume;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 207, 104),
      //barhead
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 1.0),
            colors: [
              Color.fromARGB(255, 84, 21, 144),
              Color.fromARGB(255, 210, 21, 214),
              Color.fromARGB(255, 74, 111, 222),
            ],
            tileMode: TileMode.clamp,
          )),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text(
          " TGDT",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              overflow: TextOverflow.fade),
        ),
      ),
      //ส่วนของ body จะมีส่วนที่เเสดง Map เเละการเเจ้งเตือนสถานที่สำคัญ
      body: Stack(
        children: [
          // Container นี้เป็นการเรียกใช้ funtion ให้มีการทำงาน
          Container(
            child: () {
              //checklishtravel();
              // checklocationUpdate();
              Sendtoast.getlocayionWarring();
              SendtoastGreenArea().getlocationGreenArea();
            }(),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const MapSample(title: "MAP"),
          ),

          Container(
            padding: const EdgeInsets.only(right: 50, top: 40),
            height: MediaQuery.of(context).size.height * 0.15,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 100, top: 10),
              color: Color.fromARGB(255, 214, 207, 151),
              child: SizedBox(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: DropdownButton(
                        value: selectItem,
                        items: items.map((String language) {
                          return DropdownMenuItem<String>(
                              value: language, child: Text(language));
                        }).toList(),
                        //ทำการรับค่าการเลือกภาษา จะส่งไปสองส่วนคือ selectItemเพื่อทำการ เเสดงชื่อภาษา เเล้วส่งไปที่ sendvoiceLanguage() เพื่อทำการเลือกภาษา

                        onChanged: (String? newLanguge) {
                          selectItem = newLanguge;
                          LanguageController.sendvoiceLanguage(newLanguge!);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 50,
                      child: LanguageController.sendpicture(selectItem!),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 1.0),
                  colors: [
                    Color.fromARGB(255, 84, 21, 144),
                    Color.fromARGB(255, 210, 21, 214),
                    Color.fromARGB(255, 74, 111, 222),
                  ],
                  tileMode: TileMode.clamp,
                )),
                child: Center(
                  child: Text(
                    'Travels Check',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
            CheckboxListTile(
              title: const Text('Wat Aranyik'),
              value: isCheckinkTravel_1,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_1 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wat Jaedee Yodhong'),
              value: isCheckinkTravel_2,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_2 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Thawee Folk Museum'),
              value: isCheckinkTravel_3,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_3 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wat Ratchaboorana'),
              value: isCheckinkTravel_4,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_4 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wat Nangpraya'),
              value: isCheckinkTravel_5,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_5 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wat Srirattanamahatard'),
              value: isCheckinkTravel_6,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_6 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Wang Chan Museum'),
              value: isCheckinkTravel_7,
              onChanged: (bool? value) {
                setState(() {
                  isCheckinkTravel_7 = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('King Naresuan he great shrine'),
              value: isTest,
              onChanged: (bool? value) {
                setState(() {
                  isTest = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  double _volume = 1.0;
  volume(double volume) {
    _volume = volume;
    return volume;
  }

  // final FlutterTts _flutterTts = FlutterTts();
  // final CollectionReference datatravel =
  //     FirebaseFirestore.instance.collection('Traveldetail');
  // final CollectionReference datacontract =
  //     FirebaseFirestore.instance.collection('contact');

  List langung = ['th-TH', 'en-AU', 'zh'];

  // Future<void> getTextThai() async {
  //   await datatravel.get().then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       textThai.add(doc['describeThai']);
  //     });
  //   });
  // }

  // Future<void> getTextEng() async {
  //   await datatravel.get().then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       textEng.add(doc['describeEng']);
  //     });
  //   });
  // }

  // Future<void> getTextChi() async {
  //   await datatravel.get().then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       textChi.add(doc['describechine']);
  //     });
  //   });
  // }

  List<String> textThai = [];
  List<String> textEng = [];
  List<String> textChi = [];

//ส่วนนี้จะ
  // Location location = Location();
  // late StreamSubscription<LocationData> locationSubscription;
  // void checklocationUpdate() {
  //   locationSubscription = Stream.periodic(const Duration(seconds: 30))
  //       .asyncMap((_) => location.getLocation())
  //       .listen((newLocation) {
  //     setState(() {
  //       currentLocation = newLocation;
  //       if (!isSpeakin) {
  //         _spaek(selectItem!);
  //       }

  //       print(
  //           "current location: ${currentLocation!.latitude}, ${currentLocation!.longitude}");
  //     });
  //   });
  // }

  pointcheck() {
    Point checklocationpoint =
        Point(currentLocation?.latitude ?? 0, currentLocation?.longitude ?? 0);
    return checklocationpoint;
  }

  // void _spaek(String language) async {
  //   print(isTest);
  //   if (language == 'Thailand') {
  //     await getTextThai();
  //     /* texttospeech = textThai[2]; */
  //     if (CheckpointRate().checkArea_1(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[6];
  //     }
  //     if (CheckpointRate().checkArea_2(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[5];
  //     }
  //     if (CheckpointRate().checkArea_3(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[3];
  //     }
  //     if (CheckpointRate().checkArea_4(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[1];
  //     }
  //     if (CheckpointRate().checkArea_5(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[2];
  //     }
  //     if (CheckpointRate().checkArea_6(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[0];
  //     }
  //     if (CheckpointRate().checkArea_7(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textThai[7];
  //     }
  //   }

  //   if (language == 'English') {
  //     await getTextEng();
  //     /* texttospeech = textEng[2]; */
  //     if (CheckpointRate().checkArea_1(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[6];
  //     }
  //     if (CheckpointRate().checkArea_2(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[5];
  //     }
  //     if (CheckpointRate().checkArea_3(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[3];
  //     }
  //     if (CheckpointRate().checkArea_4(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[1];
  //     }
  //     if (CheckpointRate().checkArea_5(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[2];
  //     }
  //     if (CheckpointRate().checkArea_6(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[0];
  //     }
  //     if (CheckpointRate().checkArea_7(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textEng[7];
  //     }
  //   }

  //   if (language == 'Chinese') {
  //     await getTextChi();
  //     /* texttospeech = textChi[2]; */
  //     if (CheckpointRate().checkArea_1(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[6];
  //     }
  //     if (CheckpointRate().checkArea_2(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[5];
  //     }
  //     if (CheckpointRate().checkArea_3(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[3];
  //     }
  //     if (CheckpointRate().checkArea_4(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[1];
  //     }
  //     if (CheckpointRate().checkArea_5(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[2];
  //     }
  //     if (CheckpointRate().checkArea_6(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[0];
  //     }
  //     if (CheckpointRate().checkArea_7(pointcheck()) == true) {
  //       checklocationTrue = true;
  //       texttospeech = textChi[7];
  //     }
  //   }

  //   tssqueue.add(texttospeech!);
  //   if (tssqueue.length == 1) {
  //     speaknextqueue();
  //   }
  // }

  // void speaknextqueue() async {
  //   isSpeakin = true;
  //   if (tssqueue.isEmpty) return;
  //   final texttospeech = tssqueue.first;
  //   tssqueue.removeFirst();
  //   await _flutterTts.setPitch(5);
  //   await _flutterTts.setVolume(_volume);

  //   if (selectItem == 'Chinese') {
  //     await _flutterTts.setLanguage(langung[2]);
  //   } else if (selectItem == 'English') {
  //     await _flutterTts.setLanguage(langung[1]);
  //   } else if (selectItem == 'Thailand') {
  //     await _flutterTts.setLanguage(langung[0]);
  //   }
  //   await _flutterTts.speak(texttospeech);
  //   if (tssqueue.isNotEmpty) {
  //     speaknextqueue();
  //   } else {
  //     isSpeakin = false;
  //   }
  // }

  // //check box list point travel
  //  checklishtravel() {
  //   if (CheckGreenarea().checkGreenarea_1(pointcheck()) == true) {
  //     isCheckinkTravel_1 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_2(pointcheck()) == true) {
  //     isCheckinkTravel_2 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_3(pointcheck()) == true) {
  //     isCheckinkTravel_4 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_4(pointcheck()) == true) {
  //     isCheckinkTravel_5 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_5(pointcheck()) == true) {
  //     isCheckinkTravel_5 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_6(pointcheck()) == true) {
  //     isCheckinkTravel_6 = true;
  //   }
  //   if (CheckGreenarea().checkGreenarea_7(pointcheck()) == true) {
  //     isCheckinkTravel_7 = true;
  //   }
  // }
}
