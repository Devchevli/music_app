import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          color: Colors.black,
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  
                  children: [  Icon(Icons.podcasts,color: Colors.white,),Text(
                    " Good morning",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 30),
                  ),
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Icon(Icons.notifications,color: Colors.white,size: 27),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.lock_clock,color: Colors.white,size: 27),
                    ),
                  ],
                )

              ]),
        ),
      ),
    );
  }
}
