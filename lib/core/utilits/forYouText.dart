import 'package:final_project/core/utilits/StyleData.dart';
import 'package:flutter/material.dart';

class mainTitle extends StatelessWidget {
  final String title;
  const mainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: StylesData.mainTextStyle,
    );
  }
}
