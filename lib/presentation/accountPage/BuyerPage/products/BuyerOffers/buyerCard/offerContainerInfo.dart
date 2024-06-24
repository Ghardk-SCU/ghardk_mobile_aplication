import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class offerContainerInfo extends StatelessWidget {
  const offerContainerInfo({
    super.key,
    required this.maintitle,
    required this.desctitle,
    required this.price,
    required this.rateRating,
    required this.ratePeople,
    required this.ontap,
    required this.quantity,
  });
  final String maintitle, desctitle, price;

  final double rateRating, ratePeople;
  final int quantity;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: Text(
              maintitle,
              maxLines: 1,
              style: StylesData.titleItemStyle,
            ),
          ),
          const SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: Text(desctitle,
                //'Chicken strips with mushrooms sauce and melted cheddar cheese.',
                maxLines: 2,
                style: StylesData.descItemStyle),
          ),
          //SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Price: ${price} EGP',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Quantity: ${quantity}',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '$rateRating',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        '($ratePeople)',
                        style:
                            const TextStyle(fontSize: 9, color: Colors.black),
                      ),
                      rating(
                          itemcount: 5,
                          ratenum: rateRating.toDouble(),
                          itemsize: 14,
                          itempadding: 0),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: ontap,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
