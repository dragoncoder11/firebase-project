import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/ioginscreen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) {
                  return LoginScreen();
                }));
              },
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
