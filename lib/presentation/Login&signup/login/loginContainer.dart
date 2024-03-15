import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/components/forgotPasswordButton.dart';
import 'package:final_project/presentation/Login&signup/login/components/loginButton.dart';
import 'package:final_project/presentation/Login&signup/login/components/loginForm.dart';
import 'package:final_project/presentation/Login&signup/login/components/signupButton.dart';
import 'package:flutter/material.dart';

class loginContainer extends StatefulWidget {
  const loginContainer({
    super.key,
  });

  @override
  State<loginContainer> createState() => _loginContainerState();
}

class _loginContainerState extends State<loginContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          Text(
            'Login',
            style: TextStyle(
                fontSize: 48, color: kMainColor, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          loginForm(),
          forgotPasswordButton(),
          SizedBox(height: 5),
          loginButton(),
          SizedBox(height: 30),
          signupButton(),
        ],
      ),
    );
  }
}
