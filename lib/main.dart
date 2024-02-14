import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/forgotPassword.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kScaffoldColor,
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: forgotPassword(),
    );
  }
}
