import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: kScaffoldColor),
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
