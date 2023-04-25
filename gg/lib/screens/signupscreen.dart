import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gg/screens/home.dart';
import 'package:gg/screens/ioginscreen.dart';
import 'package:gg/widgets/button.dart';
import 'package:gg/widgets/textfield.dart';

class SignUpSCREEN extends StatefulWidget {
  SignUpSCREEN({Key? key}) : super(key: key);

  @override
  State<SignUpSCREEN> createState() => _SignUpSCREENState();
}

class _SignUpSCREENState extends State<SignUpSCREEN> {
  NAV2(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return LoginScreen();
    }));
  }

  final _emailcontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();

  final _namecontroller = TextEditingController();

  final _confirm = TextEditingController();
  signup() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
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
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 255, 255, 255),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.all(15)),
            Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/v2.png',
              height: 160,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'SIGN UP',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldShape(
              htext: 'enter your name',
              ltext: 'Name',
              controller: _namecontroller,
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
            TextFieldShape(
              htext: 'confirm password',
              ltext: 'confirm password',
              controller: _confirm,
            ),
            SizedBox(
              height: 20,
            ),
            ButtonShape(buttonname: 'SIGN IN',ontap: signup,),
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
