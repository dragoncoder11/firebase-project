import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  const CardHome({super.key,required this.imagecenter,required this.title1});
  final imagecenter;
  final title1;

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius:  BorderRadius.only(topLeft:Radius.circular(8),topRight: Radius.circular(8)),
                  child: Image(
                    
                    image: AssetImage(
                      widget.imagecenter,
                    ),
                   
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(widget.title1,style: TextStyle(color: Colors.grey,fontSize: 13),),
            ],
          ),
        ),
      ),
    );
  }
}
