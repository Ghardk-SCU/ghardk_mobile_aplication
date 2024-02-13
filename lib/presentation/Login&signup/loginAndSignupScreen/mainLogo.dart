import 'package:flutter/material.dart';

class mainLogo extends StatelessWidget {
  const mainLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Image.asset(
        'assets/images/Logo/completeLogoMainColor.png',
        fit: BoxFit.none,
        scale: 1.3,
      ),
    );
  }
}
