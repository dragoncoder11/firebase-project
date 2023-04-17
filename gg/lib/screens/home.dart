
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/pages/activity_screen.dart';
import 'package:gg/pages/home_screen.dart';
import 'package:gg/pages/profile_screen.dart';
import 'package:gg/screens/ioginscreen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var numindex = 0;
  var l=[
HomeScreen(),
    Text('data'),
    Activities(),
    ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: BottomNavigationBar(
          
          iconSize: 32,
          selectedFontSize: 12,
          selectedItemColor: Color.fromARGB(255, 162, 98, 173),
          selectedLabelStyle: TextStyle(color: Colors.blueGrey,),
          unselectedItemColor: Color.fromARGB(255, 189, 174, 174),
          unselectedLabelStyle:TextStyle(color: Color.fromARGB(255, 189, 174, 174),), 
          unselectedFontSize: 12,
          

          elevation: 0,
          backgroundColor: Colors.purple,
            currentIndex: numindex,
            onTap: (value) {
              setState(() {
                numindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_bitcoin,), label: 'Services'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_city_sharp,), label: 'Activities'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,), label: 'Profile'),
            ]),
        backgroundColor: Color.fromARGB(234, 255, 255, 255),
        body:l[numindex]);
  }
}
