import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/photoWidget.dart';
import 'package:flutter/material.dart';

import '../../../core/utilits/constant.dart';

class seller extends StatelessWidget {
  const seller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PhotoWidget(
                name: 'Mohammed Nasr', img: 'assets/images/nasr.png'),
            const SizedBox(width: 20),
            const SizedBox(
              height: 100,
              child: VerticalDivider(
                color: Colors.black,
                width: 1,
              ),
            ),
            SizedBox(width: 10),
            Row(
              children: [
                rating(
                    ratenum: 4.5, itemsize: 35, itempadding: 0, itemcount: 1),
                const Text('4.3',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const Text(' (86)',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(loream,
            textAlign: TextAlign.start,
            maxLines: 5,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis)),
      ],
    );
  }
}
