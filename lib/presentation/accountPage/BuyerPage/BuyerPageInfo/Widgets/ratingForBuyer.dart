import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class ratingForBuyer extends StatelessWidget {
  const ratingForBuyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '0.5 (1023)',
          style: TextStyle(fontSize: 14),
        ),
        rating(ratenum: 0.5, itemsize: 20, itempadding: 0, itemcount: 5),
      ],
    );
  }
}
