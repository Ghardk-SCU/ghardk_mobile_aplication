import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/cartPage/cart/incrementAndDecrementButtons.dart';
import 'package:flutter/material.dart';

class cartInfo extends StatelessWidget {
  const cartInfo({
    super.key,
    required this.title,
    required this.desc,
    required this.price,
    required this.count,
    required this.img,
  });
  final String title, desc, img;
  final int count;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(width: 10),
            const SizedBox(
              height: 70,
              child: VerticalDivider(
                color: kMainColor,
                width: 4,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16)),
                const SizedBox(height: 5),
                SizedBox(
                  width: 200,
                  child: Text(desc,
                      maxLines: 2,
                      softWrap: true,
                      style: const TextStyle(
                          color: steel,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12)),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('EGP ${price.toString()}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            incrementAndDecrementButtons(
              count: count,
            ),
          ],
        ),
      ],
    );
  }
}
