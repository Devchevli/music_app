import 'package:flutter/material.dart';
import 'package:music_app/images/App_images.dart';

import 'second_screen.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(AppImages.Welcome_screen),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(top: 570),
          child: Column(
            children: [
              const Text(
                "Feel the beat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Immerse yourself into the\n    world of music today",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 25,),
              ElevatedButton(
                  style:  ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(180, 50)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff9D1DCA))),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Second_screen(),));},
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
