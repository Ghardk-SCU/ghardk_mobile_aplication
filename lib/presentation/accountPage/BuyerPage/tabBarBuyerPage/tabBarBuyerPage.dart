import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/AddNewProductScreen.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/AddProductButton.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/dashboard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/ProductsPage.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/tabBarBuyerPage/tabBars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../products/BuyerOffers/buyerCard/buyerOfferCard.dart';

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
                  ProductsPage(),
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
