import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailItem.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailsAndStatusContainer/customTimeLineTile.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailsAndStatusContainer/detailAndStatusHeader.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailsAndStatusContainer/detailItems.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DetailsAndStatusContainer extends StatelessWidget {
  const DetailsAndStatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        //height: 300,
        child: Column(
          children: [
            detailAndStatusHeader(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                detailItems(),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SizedBox(height: 200, child: VerticalDivider()),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      children: [
                        customTimeLineTile(
                            isFirst: true,
                            isDone: true,
                            isLast: false,
                            text: 'Processing'),
                        customTimeLineTile(
                            isFirst: false,
                            isDone: true,
                            isLast: false,
                            text: 'Shipping'),
                        customTimeLineTile(
                            isFirst: false,
                            isDone: false,
                            isLast: false,
                            text: 'Out for Delivery'),
                        customTimeLineTile(
                            isFirst: false,
                            isDone: false,
                            isLast: true,
                            text: 'Arrived'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








/*  child: ListView(
                    children: [
                      customTimeLineTile(
                          isFirst: true,
                          isDone: true,
                          isLast: false,
                          text: 'Processing'),
                      customTimeLineTile(
                          isFirst: false,
                          isDone: true,
                          isLast: false,
                          text: 'Shipping'),
                      customTimeLineTile(
                          isFirst: false,
                          isDone: false,
                          isLast: false,
                          text: 'Out for Delivery'),
                      customTimeLineTile(
                          isFirst: false,
                          isDone: false,
                          isLast: true,
                          text: 'Arrived'),
                    ],
                  ),
              ], */