import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/mainTitle.dart';
import 'package:flutter/material.dart';

class resetDone extends StatelessWidget {
  const resetDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        image(img: 'assets/images/forgotPassword/CompletedPassword 1.png'),
        SizedBox(height: 20),
        title(text: 'Password Changed'),
        descTitle(
            desctitle:
                "Your password is changed. Keep it confidential for the safety of your account."),
        SizedBox(height: 20),
        SizedBox(height: 20),
        actionButton(
            text: 'Done',
            ontap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }),
        SizedBox(height: 50),
      ],
    );
  }
}
