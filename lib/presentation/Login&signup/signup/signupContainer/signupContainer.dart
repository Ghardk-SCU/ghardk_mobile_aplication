import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/signupForm.dart';
import 'package:flutter/material.dart';

class signupContainer extends StatelessWidget {
  const signupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kScaffoldColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 48, color: kMainColor, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          signupForm(),
        ],
      ),
    );
  }
}
