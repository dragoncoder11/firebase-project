import 'package:flutter/material.dart';
import 'package:gg/screens/payment.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 245, 240, 240),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Text(
                    'details',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/x3.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 300,
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
                                      color: Color.fromARGB(255, 189, 87, 207),
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
                                          '5 Days',
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(color: Colors.purple, fontSize: 16),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Tourlist',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: .5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Text(
                        'hvshcvlasvfhv hfhegeg gegiehg jhgjehgjegj erkjg h je kger;g jrjg rekjhgkjh kjrk krkrjhk rlkhjrtk jhlkrjtlk hlkjrk gkr lkh',
                        style: TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0), fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '\$288',
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
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.purple,
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
