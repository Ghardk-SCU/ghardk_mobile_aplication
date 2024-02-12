import 'package:flutter/material.dart';

class customCircleAvatar extends StatelessWidget {
  const customCircleAvatar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 35,
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 50,
      ),
    );
  }
}
