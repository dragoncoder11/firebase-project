import 'package:flutter/material.dart';
import 'package:gg/pages/category_travel_screen.dart';
import 'package:gg/screens/details.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {Key? key, required this.title, required this.img, required this.id})
      : super(key: key);
  final String title;
  final img;
  final String id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(CategoryTravelScreen.routename,arguments: {
          'id':id,
          'title':title
        });
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.asset(
                  img,
                  width: 200,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
