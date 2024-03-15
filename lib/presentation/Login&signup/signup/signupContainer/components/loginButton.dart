import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class haveAccountButton extends StatelessWidget {
  const haveAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an Account? ", style: TextStyle(color: kMainColor)),
        InkWell(
            onTap: () {
              Get.to(loginPage(),
                  transition: Transition.fadeIn,
                  duration: Duration(milliseconds: 500));
            },
            child: const Text('Login',
                style: TextStyle(
                    fontSize: 14,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline))),
      ],
    );
  }
}
