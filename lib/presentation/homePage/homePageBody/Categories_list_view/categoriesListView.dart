import 'package:final_project/presentation/homePage/homePageBody/Categories_list_view/categoriesItem.dart';
import 'package:flutter/material.dart';

class categoriesListView extends StatelessWidget {
  categoriesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      child: Row(
        children: [
          categoriesItem(
              CategoryName: 'Accessories',
              img: 'assets/images/catogery/access.jpg'),
          categoriesItem(
              CategoryName: 'Sewing', img: 'assets/images/catogery/sewing.jpg'),
          categoriesItem(
              CategoryName: 'Furniture',
              img: 'assets/images/catogery/furn.jpg'),
          categoriesItem(
              CategoryName: 'Figurines',
              img: 'assets/images/catogery/Figurines.jpg'),
        ],
      ),
    );
  }
}

/* import 'package:final_project/presentation/homePage/homePageBody/Categories_list_view/categoriesItem.dart';
import 'package:flutter/material.dart';

class categoriesListView extends StatelessWidget {
  categoriesListView({super.key});
  List items = ['Accessories', 'Sewing', 'Furniture', 'Figurines'];
  List images = [
    'assets/images/catogery/access.jpg',
    'assets/images/catogery/sewing.jpg',
    'assets/images/catogery/furn.jpg',
    'assets/images/catogery/Figurines.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      
      itemBuilder: (context, index) {
        return categoriesItem(
          CategoryName: items[index],
          img: images[index],
        );
      },
    );
  }
} */
