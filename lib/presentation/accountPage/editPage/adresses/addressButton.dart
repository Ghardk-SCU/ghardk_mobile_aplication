import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class addaddressbutton extends StatelessWidget {
  const addaddressbutton({
    super.key,
    required this.ontap,
    required this.child,
  });
  final VoidCallback ontap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: child,
        ));
  }
}
