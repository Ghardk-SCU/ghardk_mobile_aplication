import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/buttonsInTabBarorderPage.dart';
import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/orderItem.dart';
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
              ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return orderItem();
                },
              ),
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
