import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img,
      fit: BoxFit.contain,
      scale: 1.1,
    );
  }
}
