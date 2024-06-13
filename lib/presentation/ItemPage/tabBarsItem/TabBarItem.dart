import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/Reviews/reviewContainer.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/description.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/seller.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabBarsItem extends StatelessWidget {
  const tabBarsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
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

class tabBars extends StatelessWidget {
  const tabBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashFactory: NoSplash.splashFactory,
      tabs: tabs,
      dividerHeight: 1,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      physics: RangeMaintainingScrollPhysics(),
      indicatorWeight: 1,
      indicatorColor: Colors.black,
      labelStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      unselectedLabelStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
    );
  }
}

List<Tab> tabs = [
  Tab(text: 'Description'),
  Tab(text: 'Details'),
  Tab(text: 'Reviews'),
  Tab(text: 'Seller'),
];
