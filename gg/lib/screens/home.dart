import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/ioginscreen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var numindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: BottomNavigationBar(
          
          iconSize: 32,
          selectedFontSize: 14,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle:TextStyle(color: Colors.grey), 

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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Color.fromARGB(237, 255, 255, 255)),
          child: Column(
            children: [
              Center(
                child: Text('data'),
              )
            ],
          ),
        ));
  }
}
