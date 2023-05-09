import 'package:flutter/material.dart';

class ShapePlan {
  final String id;
  final String categories;
  final String title;
  final String imageurl;
  final List<String> ingredients;
  final List<String> program;
  final int duration;

 const ShapePlan(
      {required this.id,
     required this.categories,
     required this.title,
     required this.imageurl,
     required this.ingredients,
     required this.program,
     required this.duration});
}

