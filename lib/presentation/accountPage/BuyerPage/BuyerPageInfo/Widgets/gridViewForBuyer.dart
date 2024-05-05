import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/categoryForBuyer.dart';

import 'package:flutter/material.dart';

class gridViewForBuyer extends StatelessWidget {
  const gridViewForBuyer({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - (111 + 50),
      child: DynamicHeightGridView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: categories.length,
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          builder: (ctx, index) {
            return categoryForBuyer(text: categories[index]);
          }),
    );
  }
}
