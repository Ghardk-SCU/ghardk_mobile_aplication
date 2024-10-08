import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class checkOutButton extends StatelessWidget {
  const checkOutButton({
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
            width: double.maxFinite,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: child));
  }
}
