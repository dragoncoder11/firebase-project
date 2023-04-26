import 'package:flutter/material.dart';
import 'package:gg/widgets/card_payment.dart';
class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:  Text(
                        'Payment Method',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,leading: Icon(Icons.arrow_back_ios,color: Colors.black,),),
     backgroundColor: Color.fromARGB(234, 255, 255, 255),
     body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
           
      CardPayment(title: 'Vodafone Cash', image: 'assets/b1.png'),
            CardPayment(title: 'Cash', image: 'assets/b2.png'),

      CardPayment(title: 'Visa', image: 'assets/b6.png'),

      CardPayment(title: 'Mastercard', image: 'assets/b7.png'),

      CardPayment(title: 'paybal', image: 'assets/w1.png'),

      

      
     ],),


    );
  }
}