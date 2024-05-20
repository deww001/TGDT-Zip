import 'package:flutter/material.dart';
import 'package:flutter_app_tgdt/Models/phoneDetailModel.dart';
//import 'package:flutter_app_tgdt/data/modeldata.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

// ignore: camel_case_types
class phonecall extends StatefulWidget {
  const phonecall({Key? key}) : super(key: key);
  @override
  State<phonecall> createState() => _phonecall();
}

// ignore: camel_case_types
class _phonecall extends State<phonecall> {
  List datacontract = [];

  @override
  void initState() {
    super.initState();
    //fetchdatabase();
  }

  // fetchdatabase() async {
  //   dynamic result = await Datamodel().getdatacontact();
  //   setState(() {
  //     datacontract = result;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
          backgroundColor: const Color.fromARGB(255, 228, 151, 50),
          title: const Text("Phone call"),
        ),
        //ส่วนของ body จะมีส่วนที่เเสดง Map เเละการเเจ้งเตือนสถานที่สำคัญ
        body: Center(
          child: Container(
            child: FutureBuilder<List<Get>>(
                future: fenchget(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: datacontract.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    title:
                                        Text(datacontract[index]['phoneName']),
                                    subtitle: Text(
                                        datacontract[index]['phoneNumber']),
                                    trailing: TextButton(
                                        style: TextButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 12),
                                            side: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 84, 21, 144))),
                                        onPressed: () async {
                                          await FlutterPhoneDirectCaller
                                              .callNumber(datacontract[index]
                                                  ['phoneNumber']);
                                        },
                                        child: const Text("Call")),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  } else {
                    print(snapshot.error);
                    return Text("Error:${snapshot.error}");
                  }
                }),
            // child: ListView.builder(
            //     itemCount: datacontract.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         margin: const EdgeInsets.only(top: 20),
            //         child: Column(
            //           children: [
            //             Card(
            //               child: ListTile(

            //                 title: Text(datacontract[index]['agency']),
            //                 subtitle: Text(datacontract[index]['numberphone']),
            //                 trailing: TextButton(
            //                     style: TextButton.styleFrom(
            //                         padding: const EdgeInsets.symmetric(
            //                             horizontal: 32, vertical: 12),
            //                         side: const BorderSide(
            //                             color:
            //                                 Color.fromARGB(255, 84, 21, 144))),
            //                     onPressed: () async {
            //                       await FlutterPhoneDirectCaller.callNumber(
            //                           datacontract[index]['numberphone']);
            //                     },
            //                     child: const Text("Call")),
            //               ),
            //             )
            //           ],
            //         ),
            //       );
            //     }),
          ),
        ));
  }
}
