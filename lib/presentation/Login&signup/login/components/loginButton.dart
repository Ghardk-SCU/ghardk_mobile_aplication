import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class loginButton extends StatelessWidget {
  const loginButton({
    super.key,
    required this.child,
    required this.ontap,
  });
  final Widget child;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: kMainColor,
          ),
          child: child),
    );
  }
}
