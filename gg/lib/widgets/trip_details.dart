import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gg/dummy_data.dart';
import 'package:gg/screens/details.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({Key? key}) : super(key: key);
  static const routename = 'trip_details';
  @override
  Widget build(BuildContext context) {
    final trid_id = ModalRoute.of(context)!.settings.arguments as String;
    final trip_filter = DUMMY_BOOKING.firstWhere((element) => element.id==trid_id);

    return Scaffold(
      body: Details(imageurl:trip_filter.imageurl,  time:trip_filter.duration, id:trip_filter.id, program: trip_filter.program.toString(), price:trip_filter.duration, ingredients: trip_filter.ingredients.toString(),),
    );
  }
}
