import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/loginAndSignupButtons.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/mainLogo.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/skipButton.dart';
import 'package:flutter/material.dart';

class loginAndSignupScreen extends StatelessWidget {
  const loginAndSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mainLogo(),
            ClipOval(
              clipper: MyClip(),
              child: Container(
                //height: double.maxFinite,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kMainColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Image.asset('assets/images/WelcomeImg.png'),
                        SizedBox(height: 30),
                        loginAndSignupButtons(),
                        SizedBox(height: 20),
                        skipItNowButton(),
                        SizedBox(height: 20),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(-260, 0, 930, 1000);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
