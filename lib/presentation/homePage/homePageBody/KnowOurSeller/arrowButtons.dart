import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class arrowButtons extends StatelessWidget {
  arrowButtons({
    super.key,
    required this.pageController,
    required this.fun,
    required this.icon,
    this.padding,
  });

  final PageController pageController;
  final VoidCallback fun;
  final Icon icon;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kMainColor,
        ),
        child: IconButton(
          padding: padding,
          onPressed: fun,
          icon: icon,
          color: Colors.white,
          iconSize: 14,
        ));
  }
}
