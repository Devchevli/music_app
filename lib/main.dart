import 'package:flutter/material.dart';
import 'package:music_app/Home_Screen.dart';
import 'package:music_app/Page_view.dart';
import 'package:music_app/Sign_Up.dart';
import 'package:music_app/carosual_slider.dart';
import 'package:music_app/config/app_constant.dart';
import 'package:music_app/forgotpassScreen.dart';
import 'package:music_app/jst_try.dart';
import 'package:music_app/Sign_In.dart';
import 'package:music_app/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'First_Screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref= await SharedPreferences.getInstance();
  eMail=pref.getString("Email")?? "abc@gmail.com";
  userPassword =pref.getString("Password")?? "12345";
  isLogin=pref.getBool("isLogin") ?? false;
  print("userName:$eMail");
  print("userPassword:$userPassword");
  print("login value:$isLogin");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Home_screen(),
    );
  }
}
