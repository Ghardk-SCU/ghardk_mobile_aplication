import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class incrementAndDecrementButton extends StatelessWidget {
  const incrementAndDecrementButton({
    super.key,
    required this.icon,
    required this.ontap,
  });
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.all(6),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
