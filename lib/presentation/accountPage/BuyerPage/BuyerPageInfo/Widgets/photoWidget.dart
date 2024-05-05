import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
    required this.name,
    required this.img,
  });
  final String name, img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 14, color: Colors.black))
      ],
    );
  }
}
