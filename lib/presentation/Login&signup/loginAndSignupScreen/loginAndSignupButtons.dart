import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:final_project/presentation/Login&signup/signup/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginAndSignupButtons extends StatelessWidget {
  const loginAndSignupButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.to(loginPage(),
                transition: Transition.leftToRightWithFade,
                duration: Duration(milliseconds: 700));
          },
          child: Container(
            width: 140,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text('LOGIN',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kMainColor)),
          ),
        ),
        const SizedBox(width: 16),
        InkWell(
          onTap: () {
            Get.to(signupPage(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(milliseconds: 700));
          },
          child: Container(
            width: 140,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              color: kMainColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text('SIGN UP',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
