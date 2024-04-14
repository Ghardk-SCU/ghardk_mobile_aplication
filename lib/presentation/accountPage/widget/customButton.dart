import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kMainColor, borderRadius: BorderRadius.circular(16)),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
