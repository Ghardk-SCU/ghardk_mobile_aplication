import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/ExplorePage/cardItem/cardInfo.dart';
import 'package:final_project/presentation/ItemPage/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => itemDetailsScreen()),
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color.fromARGB(213, 234, 234, 234),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.4, color: Colors.grey),
          ),
          width: 200,
          child: cardInfo(),
        ),
      ),
    );
  }
}
