import 'package:flutter/material.dart';
import 'package:gg/screens/cash_screen.dart';
import 'package:gg/screens/details.dart';
import 'package:gg/widgets/card_payment.dart';
import 'package:gg/widgets/text2.dart';
import 'package:gg/widgets/textfield.dart';
import 'package:gg/widgets/textfield_shape.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Payment Method',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) {
                  return Details();
                }));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      backgroundColor: Color.fromARGB(234, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                showModalBottomSheet(
                  
                  
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                      SizedBox(
                                      height: 20,
                                    ),
                                    TextFField(w: 350,ass: 'assets/b1.png',),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                         Text2(w: 160),
                                        Text2(w: 160),
                                      ],
                                    ),
                                        SizedBox(
                                      height: 20,
                                    ),
                                     Text2(w: 350),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                     Colors.purple
                                    )),
                                    onPressed: () {},
                                    child: Text('Pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child:
                  CardPayment(title: 'Vodafone Cash', image: 'assets/b1.png')),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return CashScreen();
                }));
              },
              child: CardPayment(title: 'Cash', image: 'assets/b2.png')),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               SingleChildScrollView(
                                child: Column(
                                  children: [
                                      SizedBox(
                                      height: 20,
                                    ),
                                    TextFField(w: 350,ass: 'assets/b6.png',),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                         Text2(w: 160),
                                        Text2(w: 160),
                                      ],
                                    ),
                                        SizedBox(
                                      height: 20,
                                    ),
                                     Text2(w: 350),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                     Colors.purple
                                    )),
                                    onPressed: () {},
                                    child: Text('Pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: CardPayment(title: 'Visa', image: 'assets/b6.png')),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             SingleChildScrollView(
                                child: Column(
                                  children: [
                                      SizedBox(
                                      height: 20,
                                    ),
                                    TextFField(w: 350,ass: 'assets/b7.png',),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                         Text2(w: 160),
                                        Text2(w: 160),
                                      ],
                                    ),
                                        SizedBox(
                                      height: 20,
                                    ),
                                     Text2(w: 350),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                     Colors.purple
                                    )),
                                    onPressed: () {},
                                    child: Text('Pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: CardPayment(title: 'Mastercard', image: 'assets/b7.png')),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               SingleChildScrollView(
                                child: Column(
                                  children: [
                                      SizedBox(
                                      height: 20,
                                    ),
                                    TextFField(w: 350,ass: 'assets/w1.png',),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                         Text2(w: 160),
                                        Text2(w: 160),
                                      ],
                                    ),
                                      SizedBox(
                                      height: 20,
                                    ),
                                     Text2(w: 350),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                     Colors.purple
                                    )),
                                    onPressed: () {},
                                    child: Text('Pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: CardPayment(title: 'paybal', image: 'assets/w1.png')),
        ],
      ),
    );
  }
}
