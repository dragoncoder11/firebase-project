import 'package:flutter/material.dart';
import 'package:gg/screens/home.dart';
import 'package:gg/widgets/card_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  var licon1 = [
    Icons.person,
    Icons.notifications,
    Icons.payment,
    Icons.favorite_outline,
    Icons.settings
  ];
  var lfunction = [
    'Edit Profile',
    'Notification',
    'Payment Method',
    'Favourites',
    'Settings'
  ];
  var licon2 = [
    Icons.arrow_forward_ios,
    Icons.switch_access_shortcut,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 245, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {
  Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return Home();
                        }));                          },
                          icon: Icon(Icons.arrow_back_ios))),
                  Text(
                    'profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.settings))),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children:[Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Color.fromARGB(255, 51, 113, 163),),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,size: 60,color: Color.fromARGB(255, 134, 190, 236),),
                      ),
                    ),
                    InkWell(onTap: () {
                      
                    },
                      child: Positioned(top: 80,right: 90,child: CircleAvatar(radius: 12,backgroundColor: Color.fromARGB(255, 51, 113, 163),child: Center(child: Icon(Icons.camera
                      ,size: 18,),),)),
                    )]
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 500,
                child: ListView.builder(
                    itemCount: lfunction.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Expanded(
                          child: CardScreen(
                              icon: licon1[index],
                              title: lfunction[index],
                              icon2: licon2[index]),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
