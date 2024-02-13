import 'package:final_project/core/utilits/constant.dart';
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
            onPressed: () {},
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
