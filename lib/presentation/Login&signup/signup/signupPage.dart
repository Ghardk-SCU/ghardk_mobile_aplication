import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/backButton.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/signupContainer.dart';
import 'package:flutter/material.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  back(),
                  Spacer(),
                  Image.asset('assets/images/Logo/completeLogo.png',
                      fit: BoxFit.contain),
                  Spacer(flex: 3),
                ],
              ),
              // SizedBox(height: 30),
              signupContainer(),
            ]),
      ),
    );
  }
}
