import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 37, fontWeight: FontWeight.w700, color: kMainColor),
    );
  }
}
