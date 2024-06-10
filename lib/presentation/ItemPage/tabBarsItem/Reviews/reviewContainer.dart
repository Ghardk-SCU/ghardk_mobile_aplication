import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class reviewContainer extends StatelessWidget {
  const reviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kScaffoldColor,
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
            color: kScaffoldColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                rating(ratenum: 5, itemsize: 20, itempadding: 0, itemcount: 5),
                Text(
                  '12/10/2022',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Obsessed with my Boho Bliss Tote Bag! Stylish, spacious, and the handwoven details take it to the next level. A must-have accessory for any fashion lover!',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Mahmoud Elsayed',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
