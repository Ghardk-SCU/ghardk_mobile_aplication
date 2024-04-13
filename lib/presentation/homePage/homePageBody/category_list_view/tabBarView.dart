import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/listViewContainerItem.dart';
import 'package:flutter/material.dart';

class tabBarView extends StatelessWidget {
  const tabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: TabBarView(
        children: [
          menuListView(),
        ],
      ),
    );
  }
}
