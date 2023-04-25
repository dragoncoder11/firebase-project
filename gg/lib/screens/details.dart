import 'package:flutter/material.dart';

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
                    width: 120,
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
                            color: Colors.black.withOpacity(.6),
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
            Row(
              children: [
                Text(
                  'Details',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  '4.8',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                    SizedBox(
              height: 10,
            ),
              ],
            ),
            Expanded(
              child: ListView.builder(itemBuilder: ((context, index) {
                return Container(color: Colors.red,);
              })),
            )
          ],
        ),
      ),
    );
  }
}
