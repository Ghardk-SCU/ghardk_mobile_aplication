import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoriteItem/favItem.dart';
import 'package:flutter/material.dart';

class gridViewFavList extends StatelessWidget {
  const gridViewFavList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 12),
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        childAspectRatio: 2 / 2.7,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return favItem();
      },
    );
  }
}
