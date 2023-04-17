import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(235, 245, 240, 240),
body:  Center(
  child:   Column(mainAxisAlignment: MainAxisAlignment.center,children: [
  
    Image(image: AssetImage('assets/v4.png'),width: 180,height: 200,),
  
    SizedBox(height: 40,),
  
    Text('There are no activities yet',style: TextStyle(color: Color.fromARGB(255, 183, 120, 194),fontSize: 20,fontWeight: FontWeight.w400),)
  
  
  
  ],),
),
    );
  }
}
