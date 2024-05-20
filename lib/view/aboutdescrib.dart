import 'package:flutter/material.dart';

class Describmarker extends StatefulWidget {
  const Describmarker({Key? key}) : super(key: key);
  @override
  State<Describmarker> createState() => _Describmarker();
}

class _Describmarker extends State<Describmarker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Describe the application'),
      ),
      body: Center(
          child: ListView(
        children: [
          ListTile(
            title: const Text('RedMarker'),
            subtitle:
                const Text('Show location tourist attraction you can click it'),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/Markerred.jpg"),
            ),
          ),
          ListTile(
            title: const Text('Point user location'),
            subtitle: const Text('Show location user location real time'),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/Me.jpg"),
            ),
          ),
          ListTile(
            title: const Text('Warning Area!'),
            subtitle: const Text(
                'Warning Area is an area to be careful of your belongings'),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/warringArea.jpg"),
            ),
          ),
          ListTile(
            title: const Text('Notification Red'),
            subtitle: const Text(
                'Warns you when entering an area to watch out for hidden assets.'),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/WarringAreat.jpg"),
            ),
          ),
          ListTile(
            title: const Text('Notification Green'),
            subtitle: const Text('Alerts you when you enter important places.'),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/AlertGrrean.jpg"),
            ),
          ),
        ],
      )),
    );
  }
}
