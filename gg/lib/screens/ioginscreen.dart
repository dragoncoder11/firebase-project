import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/home.dart';
import 'package:gg/screens/signupscreen.dart';
import 'package:gg/widgets/button.dart';
import 'package:gg/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  NAV1(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return SignUpSCREEN();
    }));
  }

  final _emailcontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();
  login() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordcontroller.text)
        .then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Home();
      })).onError((error, stackTrace) {
        print('error ${error.toString()}');
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(234, 255, 255, 255),
        body:  Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    Image.asset(
                      'assets/v2.png',
                      height: 160,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'LOG IN',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldShape(
                      htext: 'enter your email',
                      ltext: 'Email',
                      controller: _emailcontroller,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldShape(
                      htext: 'enter your password',
                      ltext: 'Password',
                      controller: _passwordcontroller,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonShape(buttonname: 'LOG IN', ontap: login),
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
                          onTap: () {
                            NAV1(context);
                          },
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
            ),
          
        ));
  }
}
