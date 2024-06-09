import 'package:flutter/material.dart';

class bottomContainerOnCart extends StatelessWidget {
  const bottomContainerOnCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        color: Color(0xffc1c2c6),
      ),
      child: const Center(
        child: Text(
          'Estimated delivery: Feb 14-20',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
