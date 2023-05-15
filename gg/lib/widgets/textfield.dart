import 'package:flutter/material.dart';

class TextFieldShape extends StatelessWidget {
   TextFieldShape(
      {Key? key,
      required this.htext,
      required this.ltext,
      required this.c,
     required this.istrue, this.kicon, this.ontap,})
      : super(key: key);
  final htext;
  final ltext;
   bool istrue;
  final IconData? kicon;

    final ontap;
  final TextEditingController c;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: Offset(1, 1),
                color: Colors.grey.withOpacity(.5)),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: htext,
            labelText: ltext,
            suffixIcon:GestureDetector(
              onTap: ontap,
              child: Icon(kicon),
            )
          ),
          controller: c,
          obscureText: istrue,
        ),
      ),
    );
  }
}
