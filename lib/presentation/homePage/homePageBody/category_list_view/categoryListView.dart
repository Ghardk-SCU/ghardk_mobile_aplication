import 'package:final_project/presentation/homePage/homePageBody/category_list_view/buttonsIntabBar.dart';
import 'package:final_project/presentation/homePage/homePageBody/category_list_view/tabBarView.dart';
import 'package:flutter/material.dart';

class categoryListView extends StatelessWidget {
  categoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: Column(
        children: [
          buttonsIntabBar(),
          tabBarView(),
        ],
      ),
    );
  }
}
