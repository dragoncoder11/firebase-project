import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gg/dummy_data.dart';


class CategoryTravelScreen extends StatefulWidget {
  static const routename = 'category travel';
  const CategoryTravelScreen({Key? key}) : super(key: key);

  @override
  State<CategoryTravelScreen> createState() => _CategoryTravelScreenState();
}

class _CategoryTravelScreenState extends State<CategoryTravelScreen> {
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routearg['id'];
    final categoryTitle = routearg['title'];
     final categorybook = DUMMY_BOOKING.where((element) => element.categories.contains(categoryId!)).toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon:Icon( Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          categoryTitle!,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Text(categorybook[index].title);
        
      }),itemCount:categorybook.length ,),
    );
  }
}
