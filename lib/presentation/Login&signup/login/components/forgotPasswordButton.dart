import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/sendingEmailScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgotPasswordButton extends StatelessWidget {
  const forgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              Get.to(() => sendingEmailScreen());
            },
            child: Text(
              'Forgot Password',
              style: TextStyle(
                  fontSize: 12,
                  color: kMainColor,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.underline),
              textAlign: TextAlign.end,
            )),
      ],
    );
  }
}
