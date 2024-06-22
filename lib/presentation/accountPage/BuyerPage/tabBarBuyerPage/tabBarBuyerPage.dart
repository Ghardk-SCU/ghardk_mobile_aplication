import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/dashboard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/fullOrderPage/orderItem.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/ProductsPage.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/tabBarBuyerPage/tabBars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabBarBuyerPage extends StatelessWidget {
  const tabBarBuyerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          tabBarsBuyerPage(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AutoScaleTabBarView(
              children: [
                dashboardPage(),
                ProductsPage(),
                OrderPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return orderItem();
      },
    );
  }
}
