import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class tabBarsBuyerPage extends StatelessWidget {
  const tabBarsBuyerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashFactory: NoSplash.splashFactory,
      tabs: tabs,
      dividerHeight: 1,
      isScrollable: false,
      tabAlignment: TabAlignment.fill,
      physics: RangeMaintainingScrollPhysics(),
      indicatorWeight: 1,
      indicatorColor: kMainColor,
      labelStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kMainColor),
      unselectedLabelStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
    );
  }
}

List<Tab> tabs = [
  Tab(text: 'Dashboard'),
  Tab(text: 'Products'),
  Tab(text: 'Orders'),
];
