import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/typingEmail/typingEmail.dart';
import 'package:flutter/material.dart';

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
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64),
                          topRight: Radius.circular(64))),
                  duration: Duration(hours: 1),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  content: typingEmail()));
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
