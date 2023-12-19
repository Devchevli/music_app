import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Sign_Up.dart';
import 'package:music_app/config/app_constant.dart';
import 'package:music_app/forgotpassScreen.dart';
import 'package:music_app/images/App_images.dart';
import 'package:music_app/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn_screen extends StatefulWidget {
  const SignIn_screen({super.key});

  @override
  State<SignIn_screen> createState() => _SignIn_screenState();
}

class _SignIn_screenState extends State<SignIn_screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _errorMessage = "";
  bool isTrue = false;
  bool passwordVisible = false;
  bool isCheck = false;

  @override
  void initState() {
    passwordVisible = false;
    super.initState();
  }

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
                image: NetworkImage(AppImages.SignInBg),
                fit: BoxFit.cover,
                opacity: 0.3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 600,
              width: 350,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        cursorOpacityAnimates: true,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                            labelText: "E-mail",
                            hintText: "Enter Your  E-mail",
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
                        obscureText: !passwordVisible,
                        maxLength: 9,
                        cursorOpacityAnimates: true,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: Colors.grey,
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            suffixIconColor: Colors.grey,
                            labelText: "Password",
                            hintText: "Enter Your Password",
                            hintStyle: const TextStyle(
                                color: Colors.white38, fontSize: 15),
                            labelStyle: const TextStyle(color: Colors.white70),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70))),
                        cursorColor: Colors.white,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    if (_errorMessage.isNotEmpty)
                      Text(
                        _errorMessage,
                        style: const TextStyle(color: Colors.red),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                     InkWell(
                      onTap: () => Navigator.push(context,  MaterialPageRoute(
                        builder: (context) =>
                        const Forgot_Pass_Screen(),
                      )),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "forgot Password ?",
                            style: TextStyle(

                                color: Colors.white, fontWeight: FontWeight.w700),
                          )),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
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
                        onPressed: () async {
                          setState(() {});
                          SharedPreferences pref =
                              await SharedPreferences.getInstance();
                          if (emailController.text.isEmpty &&
                              passwordController.text.isEmpty) {
                            setState(() {
                              _errorMessage =
                                  'Please enter both username and password.';
                            });
                          } else if (emailController.text.isEmpty) {
                            setState(() {
                              _errorMessage = "Please enter E-Mail";
                            });
                          } else if (passwordController.text.isEmpty) {
                            setState(() {
                              _errorMessage = "Please enter password";
                            });
                          } else {
                            _errorMessage = "";
                            isCheck = true;
                            setState(() {});
                              if (eMail == emailController.text &&
                                  userPassword == passwordController.text) {
                                isCheck = false;
                                pref.setBool("isLogin", true);
                                isLogin = pref.getBool("isLogin")!;
                                print("isLogin:$isLogin");
                                setState(() {});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Second_screen(),
                                    ));
                              } else if (eMail != emailController.text) {
                                setState(() {
                                  isCheck = false;
                                  setState(() {});
                                  _errorMessage = "Invalid Email";
                                });
                              } else if (userPassword !=
                                  passwordController.text) {
                                setState(() {
                                  isCheck = false;
                                  setState(() {});
                                  _errorMessage = "Invalid password";
                                });
                              }

                          }
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 45),
                      child: Row(
                        children: [
                          const Text(
                            "Do you have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Sign_Up_Screen(),
                                  )
                              ),
                              child: const Text(
                                " Sign Up",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              )),
                        ],
                      ),
                    )
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
