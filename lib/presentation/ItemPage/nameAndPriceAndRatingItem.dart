import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class nameAndPriceAndRatingItem extends StatelessWidget {
  const nameAndPriceAndRatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text('Boho Bliss Tote Bag',
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kMainColor)),
            ),
            Text('EGP 33.35',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kMainColor)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Rating', style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    rating(
                        ratenum: 3.4,
                        itemsize: 25,
                        itempadding: 0,
                        itemcount: 1),
                    Text('3.4', style: TextStyle(fontSize: 16)),
                    Text('(83)', style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
            SizedBox(width: 8),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                color: Colors.black,
                width: 1,
                thickness: 1,
              ),
            ),
            SizedBox(width: 8),
            SizedBox(
              width: 150,
              child: Text('Estimated arrival Feb 9 -15',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            ),
          ],
        )
      ],
    );
  }
}
