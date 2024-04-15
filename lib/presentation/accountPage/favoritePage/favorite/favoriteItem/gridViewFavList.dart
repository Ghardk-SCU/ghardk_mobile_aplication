import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoriteItem/favItem.dart';
import 'package:flutter/material.dart';

class gridViewFavList extends StatelessWidget {
  const gridViewFavList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: DynamicHeightGridView(
          physics: BouncingScrollPhysics(),
          itemCount: 120,
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          builder: (ctx, index) {
            return favItem();
          }),
    );
  }
}

/*  return GridView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 12),
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        //childAspectRatio: 2 / 2.7,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return favItem();
      },
    ); */