// import 'package:cloud_firestore/cloud_firestore.dart';

// class Datamodel {
//   final CollectionReference datatravel =
//       FirebaseFirestore.instance.collection('Traveldetail');
//   final CollectionReference datacontract =
//       FirebaseFirestore.instance.collection('contact');

//   Future getdatatravel() async {
//     List itempList = [];

//     await datatravel.orderBy('id').get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         itempList.add(doc.data());
//       });
//     });
//     return itempList;
//   }

//   Future getdatalatlng() async {
//     List latlngList = [];

//     await datatravel.orderBy('id').get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         latlngList.add(doc['latlng']);
//       });
//     });
//     return latlngList;
//   }

//   Future<List> getDatascribThai() async {
//     List datadescribthai = [];
//     await datatravel.get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         datadescribthai.add(doc['describeThai']);
//       });
//     });
//     return datadescribthai;
//   }

//   Future getDatascribEng() async {
//     List datadescribEng = [];
//     await datatravel.get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         datadescribEng.add(doc['describeEng']);
//       });
//     });
//     return datadescribEng;
//   }

//   Future getDatascribchine() async {
//     List datadescribchine = [];
//     await datatravel.get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         datadescribchine.add(doc['describechine']);
//       });
//     });
//     return datadescribchine;
//   }

//   Future getdatacontact() async {
//     List contract = [];
//     await datacontract.get().then((QuerySnapshot querySnapshot) {
//       // ignore: avoid_function_literals_in_foreach_calls
//       querySnapshot.docs.forEach((doc) {
//         contract.add(doc.data());
//       });
//     });
//     return contract;
//   }
// }
