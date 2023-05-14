import 'package:flutter/material.dart';
import 'package:gg/screens/payment.dart';

class Details extends StatelessWidget {
  const Details(
      {Key? key,
      required this.imageurl,
      required this.time,
      required this.id,
      required this.program,
      required this.price,
      required this.ingredients})
      : super(key: key);
  final imageurl;

  final time;
  final id;
  final program;
  final price;
  final ingredients;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 245, 240, 240),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          imageurl,
                        ),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 330,
                      bottom: 250,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),
                    Positioned(
                        top: 230,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                            color: Colors.black.withOpacity(.7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Color.fromARGB(255, 51, 113, 163),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'The Duration',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 231, 221, 221),
                                              fontSize: 12),
                                        ),
                                        Text(
                                          '$time Days',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 231, 221, 221),
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color:
                                            Color.fromARGB(255, 236, 158, 40)),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Rating',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 231, 221, 221),
                                              fontSize: 12),
                                        ),
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 231, 221, 221),
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )))
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                 
                     Container(
                      padding: EdgeInsets.all(10),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: .5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ListView(children: [
                        Text(
                        program,
                        style: TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0), fontSize: 14),
                      ),
                      ],)
                    ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
              Container(
                      padding: EdgeInsets.all(10),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: .5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ListView(children: [
                        Text(
                        ingredients,
                        style: TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0), fontSize: 14),
                      ),
                      ],)
                    ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '\$$time',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(builder: (_) {
                            return Payment();
                          }));
                        },
                        child: Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 51, 113, 163),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Book Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
