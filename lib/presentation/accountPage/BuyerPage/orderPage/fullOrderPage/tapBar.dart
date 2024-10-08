import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/fullOrderPage/buttonsInTabBarorderPage.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/fullOrderPage/orderItem.dart';
import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  const tabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buttonsInTabBarOrderPage(),
        SizedBox(
          height: MediaQuery.of(context).size.height - 126,
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
