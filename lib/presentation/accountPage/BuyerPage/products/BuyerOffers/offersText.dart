import 'package:flutter/material.dart';

class offersText extends StatelessWidget {
  const offersText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Offers',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600));
  }
}
