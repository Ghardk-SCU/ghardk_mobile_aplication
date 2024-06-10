import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/Reviews/reviewContainer.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/description.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/seller.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/tabBars.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/table.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/BuyerPageInfo.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/photoWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabBarsItem extends StatelessWidget {
  const tabBarsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          tabBars(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: AutoScaleTabBarView(
              children: [
                DescriptionTabBarView(),
                table(),
                reviewContainer(),
                seller(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
