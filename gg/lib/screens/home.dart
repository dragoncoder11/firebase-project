import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 255, 255, 255),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('home'),
          MaterialButton(onPressed: (){
            FirebaseAuth.instance.signOut();
          },
          color: Colors.blueGrey,)
        ],
      ),
      ),
      
    );
  }
}
