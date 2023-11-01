import 'package:flutter/material.dart';
import 'package:music_app/Page_view.dart';
import 'package:music_app/jst_try.dart';
import 'package:music_app/login_page.dart';
import 'package:music_app/second_screen.dart';

import 'First_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Login_screen(),
    );
  }
}
