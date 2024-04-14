import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class customAccAppBar extends StatelessWidget {
  const customAccAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 16, left: 16),
      width: double.infinity,
      height: 70,
      decoration: const BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
          const Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
