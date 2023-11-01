import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/images/App_images.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(AppImages.Loginback), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 10),
                child: Container(
                  height: 600,
                  width: 350,
                  color: Colors.grey.withOpacity(0.1),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log into\nyour account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: TextField(cursorOpacityAnimates: true,
                            decoration: InputDecoration(suffixIcon: Icon(Icons.person),suffixIconColor: Colors.white,
                                labelText: "UserName",
                                labelStyle: TextStyle(color: Colors.black),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: TextField(cursorOpacityAnimates: true,
                            decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye),suffixIconColor: Colors.white,
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// AnimatedOpacity(
// opacity: (isTrue) ? 1 : 0,
// duration: const Duration(seconds: 1),
// child: Container(
// height: 50,
// width: size.width,
// decoration: BoxDecoration(
// color: Colors.yellowAccent.withOpacity(.4)
// ),
//
// ),
// ),
// const Text("Submit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,),),
