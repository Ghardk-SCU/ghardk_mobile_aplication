import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {super.key,
      required this.icon,
      this.ontap,
      this.color = Colors.white,
      this.width = 40,
      this.height = 40});
  final Icon icon;
  void Function()? ontap;
  Color? color;
  double width, height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        child: icon,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
