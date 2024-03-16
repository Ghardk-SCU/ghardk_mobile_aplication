import 'package:flutter/material.dart';

class imagesForAdvirsment extends StatelessWidget {
  imagesForAdvirsment({super.key, required this.controller});
  final PageController controller;
  final List<String> ads = [
    'assets/images/advirsments/ads.png',
    'assets/images/advirsments/ads2.png',
    'assets/images/advirsments/ads.png',
    'assets/images/advirsments/ads2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      physics: BouncingScrollPhysics(),
      itemCount: ads.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            ads[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
