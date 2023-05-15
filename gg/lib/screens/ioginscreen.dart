import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/home.dart';
import 'package:gg/screens/signupscreen.dart';
import 'package:gg/utilities/utility.dart';
import 'package:gg/widgets/textfield.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future login() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim());
    void dispose() {
      _emailcontroller.dispose();
      _passwordcontroller.dispose();
      super.dispose();
    }
  }

  void log() {
    _auth
        .signInWithEmailAndPassword(
            email: _emailcontroller.text.toString(),
            password: _passwordcontroller.text.toString())
        .then((value) {
      utility().toastmessage(value.user!.email.toString());
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Home();
      }));
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      utility().toastmessage(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    var obscure=true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 113, 163),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
              ),
              width: double.infinity,
              height: 280,
              child: Image(
                image: AssetImage('assets/v2.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign into your account',
                      style: TextStyle(
                        color: Color.fromARGB(228, 158, 158, 158),
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFieldShape(istrue: false,
                      htext: 'enter your email',
                      ltext: 'Email',
                      c: _emailcontroller,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldShape(istrue: obscure,
                      htext: 'enter your password',
                      ltext: 'Password',
                      c: _passwordcontroller,
                        
                      kicon: (obscure ==true? Icons.visibility : Icons.visibility_off),
                      ontap: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                    ),
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
                          width: 12,),
                        GestureDetector(
                          onTap: () {
                            NAV1(context);
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 51, 113, 163),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        log();
                      },
                      child: Container(
                        width: 150,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 51, 113, 163),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void NAV1(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return SignUpPage();
    }));
  }
}