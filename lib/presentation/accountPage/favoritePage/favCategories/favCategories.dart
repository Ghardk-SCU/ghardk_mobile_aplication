import 'package:final_project/presentation/accountPage/favoritePage/favCategories/favCatrgory.dart';
import 'package:flutter/material.dart';

class favCategories extends StatelessWidget {
  const favCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: 2),
        favCategory(icon: Icons.diamond_outlined, text: 'Items'),
        Spacer(),
        favCategory(icon: Icons.group_outlined, text: 'Sellers'),
        Spacer(flex: 2),
      ],
    );
  }
}
