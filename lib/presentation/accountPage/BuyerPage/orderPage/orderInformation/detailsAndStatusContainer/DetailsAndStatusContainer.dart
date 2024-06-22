import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/orderInformation/detailsAndStatusContainer/customTimeLineTile.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/orderInformation/detailsAndStatusContainer/detailAndStatusHeader.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/orderInformation/detailsAndStatusContainer/detailItems.dart';
import 'package:flutter/material.dart';

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
        child: const Column(
          children: [
            detailAndStatusHeader(),
            SizedBox(height: 10),
            detailAndStatusBody(),
          ],
        ),
      ),
    );
  }
}

class detailAndStatusBody extends StatelessWidget {
  const detailAndStatusBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
