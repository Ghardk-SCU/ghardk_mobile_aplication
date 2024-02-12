import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class beSellarButton extends StatelessWidget {
  const beSellarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 105,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kMainColor,
        ),
        child: Center(
          child: Text(
            'Be a Seller',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
