import 'package:final_project/core/utilits/customCircleAvatar.dart';
import 'package:flutter/material.dart';

class topContainerOnCart extends StatelessWidget {
  topContainerOnCart({
    super.key,
    required this.name,
    required this.img,
  });
  final String name, img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        color: Color(0xffc1c2c6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            customCircleAvatar(image: img),
            const SizedBox(width: 10),
            Text(name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
