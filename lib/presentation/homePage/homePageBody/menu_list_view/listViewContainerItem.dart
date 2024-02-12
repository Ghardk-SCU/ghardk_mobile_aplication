import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/menuItem.dart';
import 'package:flutter/material.dart';

class menuListView extends StatelessWidget {
  const menuListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: menuItem(),
      ),
    );
  }
}
