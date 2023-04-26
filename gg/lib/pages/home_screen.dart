import 'package:flutter/material.dart';
import 'package:gg/pages/profile_screen.dart';
import 'package:gg/screens/details.dart';
import 'package:gg/widgets/card_home.dart';
import 'package:gg/widgets/container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var licons = [
    'assets/x1.jpg',
    'assets/x2.jpg',
    'assets/x3.jpg',
    'assets/x4.jpg'
  ];
  var ltitle = ['mountains', 'oceans', 'hotels', 'museums'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 245, 240, 240),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 18, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return ProfileScreen();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: .8, color: Colors.purple),
                              borderRadius: BorderRadius.circular(60)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 219, 169, 228),
                            backgroundImage: AssetImage('assets/d1.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Booket Your Trip',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 185, 233),
                          border: Border.all(width: .3, color: Colors.purple),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                          ))),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Explore beautiful places',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Your Destination',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                )),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 50,
                      width: 44,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 185, 233),
                          border: Border.all(width: .3, color: Colors.purple),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter,
                            color: Colors.white,
                          ))),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                height: 65,
                child: ListView.builder(
                    itemCount: licons.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CardHome(
                          imagecenter: licons[index], title1: ltitle[index]);
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: licons.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyContainer(title: ltitle[index], img: licons[index]),
                      );
                    })),
              )
            ],
          ),
        ),
      )),
    );
  }
}
