import 'package:flutter/material.dart';

class Forgot_Pass_Screen extends StatefulWidget {
  const Forgot_Pass_Screen({super.key});

  @override
  State<Forgot_Pass_Screen> createState() => _Forgot_Pass_ScreenState();
}

class _Forgot_Pass_ScreenState extends State<Forgot_Pass_Screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff0D0B1F),
      appBar: AppBar(
        backgroundColor: const Color(0xff0D0B1F),
        elevation: 0,
        title: const Text("Groovy", style: TextStyle(fontSize: 35)),
        leading: const Icon(Icons.search_sharp,size: 30,),
      ),


   body: Container(


   ), );
  }
}
