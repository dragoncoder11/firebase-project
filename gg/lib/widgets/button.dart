import 'package:flutter/material.dart';

class ButtonShape extends StatelessWidget {
  const ButtonShape({Key? key,required this.buttonname}) : super(key: key);
  final buttonname;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 15, 86, 145)),
              width: double.infinity,
              child: Center(
                child: Text(
                  buttonname,
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(129, 158, 158, 158),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ));
  }
}
