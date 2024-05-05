import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:final_project/presentation/ExplorePage/cardItem/ExploreCard.dart';
import 'package:flutter/material.dart';

class ExploreCardItemGridView extends StatelessWidget {
  const ExploreCardItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: DynamicHeightGridView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 4,
          builder: (ctx, index) {
            return ExploreCard();
          }),
    );
  }
}
