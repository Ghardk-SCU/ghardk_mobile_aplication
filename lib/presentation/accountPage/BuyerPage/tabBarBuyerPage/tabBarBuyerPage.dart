import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/dashboard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/tabBarBuyerPage/tabBars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../BuyerOffers/buyerCard/buyerOfferCard.dart';

class tabBarBuyerPage extends StatelessWidget {
  const tabBarBuyerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          tabBarsBuyerPage(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Expanded(
              child: AutoScaleTabBarView(
                children: [
                  dashboardPage(),
                  ListView.builder(
                    itemCount: 6,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return buyerOfferCard();
                    },
                  ),
                  Container(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
