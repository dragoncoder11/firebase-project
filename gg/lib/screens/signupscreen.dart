import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/home.dart';
import 'package:gg/screens/ioginscreen.dart';
import 'package:gg/utilities/utility.dart';
import 'package:gg/widgets/textfield.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
   final _namecontroller = TextEditingController();
 final _confirmpasswordcontroller = TextEditingController(); 
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
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
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Color.fromARGB(164, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create your new account',
                      style: TextStyle(
                        color: Color.fromARGB(228, 158, 158, 158),
                        fontSize: 18,
                      ),
                    ),
                      SizedBox(
                      height: 30,
                    ),     TextFieldShape(
                        htext: 'enter your full name',
                        ltext: 'Name',
                        c: _namecontroller,
                        ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldShape(
                      htext: 'enter your email',
                      ltext: 'Email',
                      c: _emailcontroller,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldShape(
                      htext: 'enter your password',
                      ltext: 'Password',
                      c: _passwordcontroller,
                    ),
                            SizedBox(
                      height: 15,
                    ),
                 
                      TextFieldShape(
                        htext: 'confirm your password',
                        ltext: 'Confirm password',
                        c: _confirmpasswordcontroller,
                        ), 
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
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
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: InkWell(
                      onTap: () {
                        _auth
                            .createUserWithEmailAndPassword(
                                email: _emailcontroller.text.toString(),
                                password: _passwordcontroller.text.toString())
                            .then((value) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Home();
      }));
                        
                        }).onError((error, stackTrace) {
                          utility().toastmessage(error.toString());
                        
                        });
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
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void NAV2(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return LoginPage();
    }));
  }
}