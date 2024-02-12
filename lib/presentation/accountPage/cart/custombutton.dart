import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customCartButton extends StatelessWidget {
  const customCartButton(
      {super.key, required this.text, required this.icon, required this.ontap});
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: kMainColor),
            ),
          ],
        ),
      ),
    );
  }
}
