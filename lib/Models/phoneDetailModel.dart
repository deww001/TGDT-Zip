import 'dart:convert';

import 'package:http/http.dart' as http;

class Get {
  final int phoneDetailID;
  final String phoneName;
  final String phoneNumber;

  Get(
      {required this.phoneDetailID,
      required this.phoneName,
      required this.phoneNumber});

  factory Get.fromJson(Map<String, dynamic> json) {
    return Get(
        phoneDetailID: json['phoneDetailID'],
        phoneName: json['phoneName'],
        phoneNumber: json['phoneNumber']);
  }
}

Future<List<Get>> fenchget() async {
  final response =
      await http.get(Uri.parse('https://192.168.1.1:7017/api/PhoneDetail'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<Get> phoneDetails = data.map((item) => Get.fromJson(item)).toList();
    print(phoneDetails);
    return phoneDetails;
  } else {
    print(response.body);
    throw Exception('Failed to load Get => phoneDetail');
  }
}
