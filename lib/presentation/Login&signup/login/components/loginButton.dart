import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class loginButton extends StatelessWidget {
  const loginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kMainColor,
      ),
      child: Text(
        'LOGIN',
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
