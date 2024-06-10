import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class ExploreCardDetails extends StatelessWidget {
  const ExploreCardDetails({
    super.key,
    required this.maintitle,
    required this.desctitle,
    required this.price,
    required this.rateRating,
    required this.ratePeople,
    required this.ontap,
  });
  final String maintitle, desctitle;
  final double price, rateRating, ratePeople;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        maintitle,
        overflow: TextOverflow.ellipsis,
        //'Chicken Mushrooms Burger',
        maxLines: 2,
        style: StylesData.titleItemStyle,
      ),
      const SizedBox(height: 3),
      Text(desctitle,
          //'Chicken strips with mushrooms sauce and melted cheddar cheese.',
          maxLines: 2,
          style: StylesData.descItemStyle),
      SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price: ${price.toInt()} EGP',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    '$rateRating',
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '($ratePeople)',
                    style: const TextStyle(fontSize: 9, color: Colors.black),
                  ),
                  rating(
                      itemcount: 5,
                      ratenum: rateRating.toDouble(),
                      itemsize: 12,
                      itempadding: 0),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
