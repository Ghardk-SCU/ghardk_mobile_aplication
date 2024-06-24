import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class descContainer extends StatelessWidget {
  const descContainer({super.key, required this.descraption});
  final String descraption;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -30,
      left: -10,
      child: Container(
        width: MediaQuery.of(context).size.width - 16,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kMainColor),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            maxLines: 2,
            textAlign: TextAlign.center,
            descraption,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
