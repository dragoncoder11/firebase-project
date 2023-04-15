import 'package:flutter/material.dart';
import 'package:gg/screens/signupscreen.dart';
import 'package:gg/widgets/button.dart';
import 'package:gg/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
   NAV1(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return SignUpSCREEN();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.all(15)),
          Image.asset(
            'assets/vvv.jpg',
            height: 160,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'LOG IN',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
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
          
          ButtonShape(buttonname: 'LOG IN'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account yet ?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap:(){NAV1(context);} ,
                child: Text(
                  'SIGN UP',
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
