import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class buttonsIntabBar extends StatelessWidget {
  const buttonsIntabBar({
    super.key,
    required this.tabs,
  });

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ButtonsTabBar(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            physics: NeverScrollableScrollPhysics(),
            tabs: tabs,
            borderWidth: 1,
            borderColor: Color(0xff2a2c41),
            backgroundColor: Color(0xff2a2c41),
            unselectedBackgroundColor: Colors.white,
            buttonMargin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
            labelStyle: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
            unselectedLabelStyle: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
