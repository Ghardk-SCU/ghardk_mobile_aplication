import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountItem.dart';
import 'package:flutter/material.dart';

class discountListView extends StatelessWidget {
  const discountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return discountItem();
      },
    );
  }
}
