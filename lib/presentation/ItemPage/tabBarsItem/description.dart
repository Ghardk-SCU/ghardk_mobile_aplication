import 'package:flutter/material.dart';

class DescriptionTabBarView extends StatelessWidget {
  const DescriptionTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          'Step into bohemian elegance with the Boho Bliss Tote Bag. Immerse yourself in the beauty of handwoven details, crafted with premium cotton for a touch of artisanal charm. This spacious tote is your versatile companion for daily adventures, seamlessly blending fashion and functionality.',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
    );
  }
}
