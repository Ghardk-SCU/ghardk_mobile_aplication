import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class descContainer extends StatelessWidget {
  const descContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -30,
      left: -10,
      child: Container(
        width: 380,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kMainColor),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            maxLines: 2,
            textAlign: TextAlign.center,
            loream,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
