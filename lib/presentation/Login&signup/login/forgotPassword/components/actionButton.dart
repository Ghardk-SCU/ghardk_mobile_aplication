import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class actionButton extends StatelessWidget {
  const actionButton({
    super.key,
    required this.text,
    required this.ontap,
  });
  final String text;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        onTap: ontap,
        child: Container(
          //margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kMainColor,
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
