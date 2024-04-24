import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class signUpButton extends StatelessWidget {
  const signUpButton(
      {super.key,
      required this.ontap,
      required this.visable,
      required this.child});
  final VoidCallback ontap;
  final bool visable;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: visable ? kMainColor : kMainColor.withOpacity(0.6),
          ),
          child: child),
    );
  }
}
