import 'package:flutter/material.dart';

class TextFField extends StatelessWidget {
  const TextFField({Key? key, required this.w,required this.ass}) : super(key: key);
  final double w;
  final ass;

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
              suffixIcon: Container(height: 50,width: 80,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ass))),),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.number,
        ));
  }
}
