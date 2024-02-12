import 'package:flutter/material.dart';

class medal extends StatelessWidget {
  const medal({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -10,
      left: -10,
      child: Image.asset(img, width: 30),
    );
  }
}
