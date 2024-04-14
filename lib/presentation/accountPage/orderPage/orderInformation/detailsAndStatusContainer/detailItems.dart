import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailItem.dart';
import 'package:flutter/material.dart';

class detailItems extends StatelessWidget {
  const detailItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        detailItem(text: 'Order ID', icon: Icons.tag_outlined),
        Text(' 123456930',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kMainColor)),
        SizedBox(height: 5),
        detailItem(text: 'Est. Arrival', icon: Icons.calendar_today_outlined),
        Text('15 / 2 / 2024',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kMainColor)),
        SizedBox(height: 5),
        detailItem(text: 'Payment Method ', icon: Icons.credit_card_outlined),
        Text(' Cash on Delivery',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kMainColor)),
        SizedBox(height: 5),
        detailItem(text: 'Number of Items', icon: Icons.dashboard_outlined),
        Text(' 3',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kMainColor)),
        SizedBox(height: 5),
      ],
    );
  }
}
