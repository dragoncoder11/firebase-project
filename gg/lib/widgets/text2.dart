import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  const Text2({Key? key, required this.w,}) : super(key: key);
  final double w;


  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 12),
        height: 55,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: .5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.number,
        ));
  }
}
