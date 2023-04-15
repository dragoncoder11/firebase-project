import 'package:flutter/material.dart';
import 'package:gg/screens/ioginscreen.dart';
import 'package:gg/widgets/button.dart';
import 'package:gg/widgets/textfield.dart';

class SignUpSCREEN extends StatelessWidget {
  const SignUpSCREEN({Key? key}) : super(key: key);
  NAV2(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.all(15)),
          Text(
            'Welcome',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/vvv.jpg',
            height: 160,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'SIGN UP',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldShape(htext: 'enter your name', ltext: 'Name'),
          SizedBox(
            height: 20,
          ),
          TextFieldShape(htext: 'enter your email', ltext: 'Email'),
          SizedBox(
            height: 20,
          ),
          TextFieldShape(htext: 'enter your password', ltext: 'Password'),
          SizedBox(
            height: 20,
          ),
          TextFieldShape(htext: 'confirm password', ltext: 'confirm password'),
          SizedBox(
            height: 20,
          ),
          ButtonShape(buttonname: 'SIGN IN'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account ?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  NAV2(context);
                },
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
