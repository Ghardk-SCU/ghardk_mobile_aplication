import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class descTitle extends StatelessWidget {
  const descTitle({
    super.key,
    required this.desctitle,
  });
  final String desctitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      desctitle,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: steel),
    );
  }
}
