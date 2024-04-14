import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class customHelpCard extends StatelessWidget {
  const customHelpCard({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      //width: 182,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.3),
              offset: Offset(-2, 4),
              blurRadius: 5,
              spreadRadius: -1,
            ),
          ]),

      child: Column(
        children: [
          Icon(icon, size: 86, color: kMainColor),
          SizedBox(height: 10),
          Text(text,
              style: TextStyle(
                  fontSize: 16, color: kMainColor, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
