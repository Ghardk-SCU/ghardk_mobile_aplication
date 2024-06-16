import 'package:flutter/material.dart';

class imageForOffer extends StatelessWidget {
  const imageForOffer({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
        color: Color.fromARGB(255, 223, 219, 216),
      ),
      height: double.maxFinite,
      width: 100,
      child: Image.asset(img, fit: BoxFit.contain),
    );
  }
}
