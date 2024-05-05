import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class categoryForBuyer extends StatelessWidget {
  const categoryForBuyer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1),
      ),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10, color: kMainColor)),
    );
  }
}
