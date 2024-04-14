import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:final_project/presentation/accountPage/widget/customButton.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favCategories/favCategories.dart';
import 'package:flutter/material.dart';

class emptyFavoritePage extends StatelessWidget {
  const emptyFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customAccAppBar(text: "Favorites"),
          SizedBox(height: 5),
          favCategories(),
          Spacer(),
          favImage(),
          SizedBox(height: 10),
          Text(
            'Favorite list is empty',
            style: TextStyle(
                fontSize: 24, color: kMainColor, fontWeight: FontWeight.w500),
            maxLines: 1,
            softWrap: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Enhance your recommendations by adding items to favorites.',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
          SizedBox(height: 20),
          customButton(text: 'Explore Items'),
          Spacer(),
        ],
      ),
    );
  }
}

class favImage extends StatelessWidget {
  const favImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/FavItem/Shape.png',
          fit: BoxFit.contain,
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: Image.asset(
            'assets/images/FavItem/Ellipse.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
