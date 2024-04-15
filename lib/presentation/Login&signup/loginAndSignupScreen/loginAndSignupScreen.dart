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
      backgroundColor: kMainColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          mainLogo(),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 30),
            Image.asset('assets/images/WelcomeImg.png'),
            SizedBox(height: 30),
            loginAndSignupButtons(),
            SizedBox(height: 20),
            skipItNowButton(),
            SizedBox(height: 20),
          ]),
        ]),
      ),
    );
  }
}
