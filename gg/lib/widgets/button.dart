import 'package:flutter/material.dart';

class ButtonShape extends StatelessWidget {
  const ButtonShape({Key? key, required this.buttonname,required this.ontap}) : super(key: key);
  final buttonname;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: 
             ontap(),
         
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.purple),
              width: double.infinity,
              child: Center(
                child: Text(
                  buttonname,
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(255, 255, 255, 0.925),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ));
  }
}
