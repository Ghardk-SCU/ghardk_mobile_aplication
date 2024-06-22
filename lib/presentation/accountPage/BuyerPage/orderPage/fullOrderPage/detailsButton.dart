import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class detailsButton extends StatelessWidget {
  const detailsButton({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text('Details',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
      ),
    );
  }
}
