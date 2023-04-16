import 'package:flutter/material.dart';

class TextFieldShape extends StatelessWidget {
  const TextFieldShape({Key? key, required this.htext, required this.ltext,required this.controller})
      : super(key: key);
  final htext;
  final ltext;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: htext,
              labelText: ltext,
            ),
          ),
        ),
      ),
    );
  }
}
