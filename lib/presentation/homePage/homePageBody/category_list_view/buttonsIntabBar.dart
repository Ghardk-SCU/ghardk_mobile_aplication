import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class buttonsIntabBar extends StatelessWidget {
  const buttonsIntabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonsTabBar(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      tabs: tapss,
      borderWidth: 1,
      borderColor: Color(0xff2a2c41),
      backgroundColor: Color(0xff2a2c41),
      unselectedBackgroundColor: Colors.white,
      buttonMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      labelStyle: TextStyle(
          fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      unselectedLabelStyle: TextStyle(
          fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
    );
  }
}

List<Tab> tapss = [
  Tab(text: "  All  "),
  Tab(text: "Accessories"),
  Tab(text: "sewing"),
  Tab(text: "Furniture"),
  Tab(text: "Figurines"),
];
