import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/signup/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupButton extends StatelessWidget {
  const signupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ", style: TextStyle(color: kMainColor)),
        InkWell(
            onTap: () {
              Get.to(signupPage(),
                  transition: Transition.fadeIn,
                  duration: Duration(milliseconds: 500));
            },
            child: const Text('Sign Up',
                style: TextStyle(
                    fontSize: 14,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline))),
      ],
    );
  }
}
