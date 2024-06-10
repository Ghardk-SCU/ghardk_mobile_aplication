import 'package:flutter/material.dart';

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
