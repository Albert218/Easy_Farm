import 'package:firebase2/Pages/search.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class IoT_Page extends StatefulWidget {
  const IoT_Page({Key? key}) : super(key: key);

  @override
  State<IoT_Page> createState() => _IoT_PageState();
}

class _IoT_PageState extends State<IoT_Page> {
  late DatabaseReference _databaseReference;
  String data = "0";

  //  void initState(){

  //   }

  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance.ref().child("/ESP32_APP/TEMPERATURE/");
    _databaseReference.onValue.listen((event) {
      if (event.snapshot.value != null) {
        setState(() {
          data = event.snapshot.value.toString();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("IoT Monitor"),
          backgroundColor: Colors.green,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Center(child: Text(data),)),
        bottomNavigationBar: Container(
          height: 65,
          child: BottomNavigationBar(
            backgroundColor: Colors.green,
            selectedFontSize: 18,
            selectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedFontSize: 16,
            currentIndex: currentIndex,
            onTap: (index) => setState(() {
              currentIndex = index;
              if (currentIndex == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              } else if (currentIndex == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IoT_Page()),
                );
              }
            }),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 252, 250, 249),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 254, 254, 253),
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart,
                  color: Color.fromARGB(255, 253, 253, 252),
                ),
                label: 'IoT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
