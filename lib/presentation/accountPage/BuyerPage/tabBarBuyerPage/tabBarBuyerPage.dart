import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/dashboard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/ProductsPage.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/tabBarBuyerPage/tabBars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabBarBuyerPage extends StatelessWidget {
  const tabBarBuyerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const tabBarsBuyerPage(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: AutoScaleTabBarView(
              children: [
                const dashboardPage(),
                const ProductsPage(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
