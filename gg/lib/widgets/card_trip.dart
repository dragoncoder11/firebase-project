import 'package:flutter/material.dart';
import 'package:gg/screens/details.dart';
import 'package:gg/widgets/trip_details.dart';

class CardTrip extends StatelessWidget {
  const CardTrip(
      {Key? key,
      required this.imageurl,
      required this.txt,
      required this.time,
      required this.id})
      : super(key: key);
  final imageurl;
  final txt;
  final time;
  final id;
  void nav(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TripDetails.routename, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          nav(context);
        },
        child: Container(
          height: 180,
          width: double.infinity,
          color: Color.fromARGB(255, 51, 113, 163),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Image.network(
                  imageurl,
                  height: double.infinity,
                  width: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(txt),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Duration:  $time')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
