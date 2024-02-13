import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginContainer.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Logo/completeLogo.png',
                  fit: BoxFit.contain),
              Text('Welcome back!', style: loginStyle),
              Text('Your creative touch is missed', style: loginStyle),
              SizedBox(height: 20),
              loginContainer(),
            ]),
      ),
    );
  }
}

const loginStyle =
    TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400);
