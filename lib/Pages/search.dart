import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';
import 'iot_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    int currentIndex=0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Search"),backgroundColor: Colors.green,),
      
      
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
              if(currentIndex==0){
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
              }else if(currentIndex==1){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
              }else{
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