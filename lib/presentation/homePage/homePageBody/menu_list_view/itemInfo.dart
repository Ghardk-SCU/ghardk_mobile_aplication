// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Colors.white)),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Container(
              height: double.maxFinite,
              width: 90,
              color: Color.fromARGB(255, 223, 219, 216),
              child: Image.asset('assets/images/burger-removebg-preview.png',
                  fit: BoxFit.contain),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text('Chicken Mushrooms Burger',
                          maxLines: 1, style: StylesData.titleItemStyle),
                    ),
                    SizedBox(height: 3),
                    SizedBox(
                      width: 150,
                      child: Text(
                          'Chicken strips with mushrooms sauce and melted cheddar cheese.',
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
                            Text(
                              'Price: 50 EGP',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3.5',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  '(1053)',
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black),
                                ),
                                rating(
                                    ratenum: 3.5, itemsize: 12, itempadding: 0),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
