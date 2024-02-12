import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/topRatedPage/Top_sellers/topSellerItem.dart';
import 'package:final_project/presentation/topRatedPage/Top_sellers/topSellerListView.dart';
import 'package:final_project/presentation/topRatedPage/category_list_view/categoryTopRatedListView.dart';
import 'package:flutter/material.dart';

class topRatedPage extends StatelessWidget {
  const topRatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: mainTitle(title: 'Category')),
            SizedBox(height: 15),
            SizedBox(
                height: 150,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: categoryTopRatedListView())),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: mainTitle(title: 'Top Rated Sellers')),
            SizedBox(height: 15),
            Expanded(child: topSellerListView()),
            //topSellerItem(),
          ],
        ),
      ),
    );
  }
}
