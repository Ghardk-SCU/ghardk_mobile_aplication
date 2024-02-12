import 'package:final_project/presentation/topRatedPage/Top_sellers/topSellerItem.dart';
import 'package:flutter/material.dart';

class topSellerListView extends StatelessWidget {
  const topSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 14,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: topSellerItem(
              idx: index,
            ));
      },
    );
  }
}
