import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountItem.dart';
import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountListView.dart';
import 'package:final_project/presentation/homePage/homePageBody/Discount_list/test/discountContainer.dart';
import 'package:final_project/presentation/homePage/homePageBody/KnowOurSeller/advirsments.dart';
import 'package:final_project/presentation/homePage/homePageBody/KnowOurSeller/customPageView.dart';
import 'package:final_project/presentation/homePage/homePageBody/category_list_view/categoryListView.dart';
import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/listViewContainerItem.dart';
import 'package:flutter/material.dart';
import 'Categories_list_view/categoriesListView.dart';

class homePageBody extends StatefulWidget {
  const homePageBody({super.key});

  @override
  State<homePageBody> createState() => _homePageBodyState();
}

class _homePageBodyState extends State<homePageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const mainTitle(title: 'For You'),
          const SizedBox(height: 20),
          categoryListView(),
          const SizedBox(height: 10),
          const SizedBox(height: 180, child: menuListView()),
          const SizedBox(height: 20),
          const mainTitle(title: 'Know our sellers'),
          const SizedBox(height: 25),
          advirsments(),
          const SizedBox(height: 20),
          const mainTitle(title: 'Categories'),
          const SizedBox(height: 25),
          SizedBox(height: 170, child: categoriesListView()),
          const SizedBox(height: 20),
          const mainTitle(title: 'Discount'),
          const SizedBox(height: 10),
          categoryListView(),
          const SizedBox(height: 20),
          SizedBox(height: 280, child: discountListView()),
        ],
      ),
    );
  }
}
