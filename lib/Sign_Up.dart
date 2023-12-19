import 'package:flutter/material.dart';
import 'package:music_app/config/app_constant.dart';
import 'package:music_app/images/App_images.dart';
import 'package:music_app/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sign_Up_Screen extends StatefulWidget {
  const Sign_Up_Screen({super.key});

  @override
  State<Sign_Up_Screen> createState() => _Sign_Up_ScreenState();
}

class _Sign_Up_ScreenState extends State<Sign_Up_Screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _errorMessage = "";
  bool isTrue = false;
  bool passwordVisible = false;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(AppImages.SignUp),
              fit: BoxFit.cover,
              opacity: .3),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 1.6,
              width: size.width / 1.2,
              decoration: const BoxDecoration(color: Colors.transparent),
              child:  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorOpacityAnimates: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                            labelText: "Name",
                            hintText: "Enter a UserName",
                            hintStyle:
                            TextStyle(color: Colors.white38, fontSize: 15),
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70))),
                        cursorColor: Colors.white,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        cursorOpacityAnimates: true,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                            labelText: "Email",
                            hintText: "Enter your Email",
                            hintStyle:
                            TextStyle(color: Colors.white38, fontSize: 15),
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70))),
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value){

                        },
                        keyboardType: TextInputType.emailAddress,
                        cursorOpacityAnimates: true,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                            labelText: "Password",
                            hintText: "Enter a Password",
                            hintStyle:
                            TextStyle(color: Colors.white38, fontSize: 15),
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70))),
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 35,),
                    ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            fixedSize:
                            MaterialStateProperty.all(const Size(350, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            backgroundColor: MaterialStatePropertyAll(
                                const Color(0xffD10396).withOpacity(.7))),
                       onPressed: ()async{
                      SharedPreferences pref=await SharedPreferences.getInstance();
                      pref.setString("Email", emailController.text);
                      pref.setString("Password", passwordController.text);
                      print( pref.get("Email"));
                      print( pref.get("Password"));
                      // eMail=pref.getString("Email")!;
                      // userPassword=pref.getString("Password")!;
                      Navigator.pop(context);
                       },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
