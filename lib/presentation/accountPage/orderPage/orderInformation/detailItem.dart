import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class detailItem extends StatelessWidget {
  const detailItem({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
              child: Icon(
            icon,
            color: kMainColor,
            size: 20,
          )),
          TextSpan(
              text: ' $text',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: kMainColor)),
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}
