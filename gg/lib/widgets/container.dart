import 'package:flutter/material.dart';
import 'package:gg/screens/details.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, required this.title,required this.img}) : super(key: key);
  final String title;
  final img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const Details();
        }));
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
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Fatih Mosque",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          color: Color(0xff636782),
                          fontSize: 13,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
