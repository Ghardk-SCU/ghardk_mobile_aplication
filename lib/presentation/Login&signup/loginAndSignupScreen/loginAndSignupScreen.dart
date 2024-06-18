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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const mainLogo(),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const SizedBox(height: 30),
              Image.asset('assets/images/WelcomeImg.png'),
              const loginAndSignupButtons(),
              const SizedBox(height: 20),
              const skipItNowButton(),
              const SizedBox(height: 20),
            ]),
          ]),
        ),
      ),
    );
  }
}
