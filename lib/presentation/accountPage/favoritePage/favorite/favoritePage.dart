import 'package:final_project/presentation/accountPage/favoritePage/favAppBar/favAppBar.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favCategories/favCategories.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoriteItem/gridViewFavList.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/filtterButton.dart';
import 'package:flutter/material.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        favAppBar(),
        SizedBox(height: 10),
        favCategories(),
        //Center(child: favItem()),
        filterButton(),
        Expanded(child: gridViewFavList()),
      ],
    ));
  }
}
