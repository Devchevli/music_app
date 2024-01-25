import 'package:flutter/material.dart';
import 'package:music_app/carosual_slider.dart';
import 'package:music_app/config/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';



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
      home: CarousalSliderEx(),
    );
  }
}
