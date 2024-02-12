import 'package:final_project/presentation/topRatedPage/category_list_view/categoryTopRatedItem.dart';
import 'package:flutter/material.dart';

class categoryTopRatedListView extends StatelessWidget {
  const categoryTopRatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = ['Accessories', 'Sewing', 'Furniture', 'Figurines'];
    List images = [
      'assets/images/catogery/access.jpg',
      'assets/images/catogery/sewing.jpg',
      'assets/images/catogery/furn.jpg',
      'assets/images/catogery/Figurines.jpg'
    ];

    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return categoryTopRatedItem(img: images[index], text: items[index]);
      },
    );
  }
}
