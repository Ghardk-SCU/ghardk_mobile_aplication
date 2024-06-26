import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoriteItem/gridViewFavList.dart';
import 'package:flutter/material.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        customAccAppBar(text: "Favorites"),
        SizedBox(height: 20),
        Expanded(child: gridViewFavList1()),
      ],
    ));
  }
}
