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
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(10),
        //width: 182,
        decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, size: 86, color: kMainColor),
            SizedBox(height: 10),
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    color: kMainColor,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
