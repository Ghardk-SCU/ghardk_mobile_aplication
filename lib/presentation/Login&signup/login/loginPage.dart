import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              back(),
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

class back extends StatelessWidget {
  const back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              //FontAwesomeIcons.arrowLeft,
              Icons.keyboard_arrow_left,
              size: 30,
              color: Colors.white,
            ))
      ],
    );
  }
}
