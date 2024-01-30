import 'package:flutter/material.dart';
import 'package:music_app/carosual_slider.dart';
import 'package:music_app/config/app_constant.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/audio_carousal.dart';
import 'components/audio_controller.dart';
import 'components/carousal_controller.dart';
import 'components/home_music.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref= await SharedPreferences.getInstance();
  eMail=pref.getString("Email")?? "abc@gmail.com";
  userPassword =pref.getString("Password")?? "12345";
  isLogin=pref.getBool("isLogin") ?? false;
  print("userName:$eMail");
  print("userPassword:$userPassword");
  print("login value:$isLogin");
  void main() {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CarouselControllerPro(),
        ),
        ChangeNotifierProvider(
          create : (context) => Audio_carousal(),
        )

      ],
      child: MyApp(),
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
      home: CarousalSliderEx(),
    );
  }
}
